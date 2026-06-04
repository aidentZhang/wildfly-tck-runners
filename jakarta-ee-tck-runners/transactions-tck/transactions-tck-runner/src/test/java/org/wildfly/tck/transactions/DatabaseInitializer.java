/*
 * Copyright The WildFly Authors
 * SPDX-License-Identifier: Apache-2.0
 */
package org.wildfly.tck.transactions;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Logger;

/**
 * Initializes the database by executing DDL SQL statements.
 */
public class DatabaseInitializer {
    private static final Logger log = Logger.getLogger(DatabaseInitializer.class.getName());
    private static boolean initialized = false;

    public static synchronized void initializeDatabase() {
        if (initialized) {
            log.info("Database already initialized, skipping");
            return;
        }

        try {
            log.info("Initializing database tables...");
            
            // Connect directly to Derby database using JDBC
            // The datasource is configured in WildFly but we need to initialize tables from client side
            String jdbcUrl = "jdbc:derby:memory:derbyDB;create=true";
            String username = "cts1";
            String password = "cts1";
            
            // Load Derby driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            
            // Read and execute DDL SQL file
            try (Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
                 Statement stmt = conn.createStatement();
                 InputStream is = DatabaseInitializer.class.getClassLoader()
                         .getResourceAsStream("sql/derby/derby.ddl.sql");
                 BufferedReader reader = new BufferedReader(new InputStreamReader(is))) {
                
                StringBuilder sqlBuilder = new StringBuilder();
                String line;
                
                while ((line = reader.readLine()) != null) {
                    line = line.trim();
                    
                    // Skip comments and empty lines
                    if (line.isEmpty() || line.startsWith("--")) {
                        continue;
                    }
                    
                    sqlBuilder.append(line).append(" ");
                    
                    // Execute statement when we hit a semicolon
                    if (line.endsWith(";")) {
                        String sql = sqlBuilder.toString().trim();
                        if (!sql.isEmpty()) {
                            try {
                                stmt.execute(sql);
                                log.fine("Executed: " + sql);
                            } catch (Exception e) {
                                // Ignore errors for DROP statements
                                if (!sql.toUpperCase().startsWith("DROP")) {
                                    log.warning("Failed to execute SQL: " + sql + " - " + e.getMessage());
                                }
                            }
                        }
                        sqlBuilder.setLength(0);
                    }
                }
                
                log.info("DDL execution complete, now executing DML to populate tables...");
            }
            
            // Execute DML SQL file to populate tables with initial data
            try (Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
                 Statement stmt = conn.createStatement();
                 InputStream is = DatabaseInitializer.class.getClassLoader()
                         .getResourceAsStream("sql/derby/derby.dml.sql");
                 BufferedReader reader = new BufferedReader(new InputStreamReader(is))) {
                
                StringBuilder sqlBuilder = new StringBuilder();
                String line;
                
                while ((line = reader.readLine()) != null) {
                    line = line.trim();
                    
                    // Skip comments and empty lines
                    if (line.isEmpty() || line.startsWith("--")) {
                        continue;
                    }
                    
                    sqlBuilder.append(line).append(" ");
                    
                    // Execute statement when we hit a semicolon
                    if (line.endsWith(";")) {
                        String sql = sqlBuilder.toString().trim();
                        if (!sql.isEmpty()) {
                            try {
                                stmt.execute(sql);
                                log.fine("Executed DML: " + sql);
                            } catch (Exception e) {
                                log.warning("Failed to execute DML: " + sql + " - " + e.getMessage());
                            }
                        }
                        sqlBuilder.setLength(0);
                    }
                }
                
                log.info("Database initialization complete (DDL + DML)");
                initialized = true;
            }
        } catch (Exception e) {
            log.severe("Failed to initialize database: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Database initialization failed", e);
        }
    }
}

// Made with Bob
