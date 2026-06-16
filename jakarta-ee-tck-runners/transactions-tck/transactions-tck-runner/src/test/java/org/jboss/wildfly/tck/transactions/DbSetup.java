/*
 * Copyright The WildFly Authors
 * SPDX-License-Identifier: Apache-2.0
 */
package org.jboss.wildfly.tck.transactions;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Database setup utility for the Transactions TCK.
 * Creates a Derby database with the CTS1 schema and executes DDL statements.
 */
public class DbSetup {
    
    public static void main(String[] args) {
        if (args.length == 0) {
            System.err.println("Usage: DbSetup <jdbc-url> [ddl-file-path]");
            System.exit(1);
        }
        
        String baseUrl = args[0];
        String ddlFilePath = args.length > 1 ? args[1] : null;
        
        String createUrl = baseUrl + ";create=true";
        String shutdownUrl = baseUrl + ";shutdown=true";
        
        System.out.println("Connecting to database: " + createUrl);
        
        try (Connection conn = DriverManager.getConnection(createUrl)) {
            System.out.println("Successfully connected to database.");
            
            // Create CTS1 schema
            createSchema(conn);
            
            // Set current schema to CTS1
            setCurrentSchema(conn);
            
            // Execute DDL file if provided
            if (ddlFilePath != null) {
                executeDdlFile(conn, ddlFilePath);
            }
            
        } catch (SQLException e) {
            System.err.println("Database operation failed:");
            e.printStackTrace();
            System.exit(1);
        }
        
        // Shutdown Derby database
        shutdownDatabase(shutdownUrl);
    }
    
    private static void createSchema(Connection conn) throws SQLException {
        System.out.println("Creating schema CTS1...");
        try (Statement stmt = conn.createStatement()) {
            stmt.execute("CREATE SCHEMA CTS1");
            System.out.println("Schema CTS1 created successfully.");
        } catch (SQLException e) {
            // SQLState X0Y68 indicates the schema already exists in Derby
            if ("X0Y68".equals(e.getSQLState())) {
                System.out.println("Schema CTS1 already exists.");
            } else {
                throw e;
            }
        }
    }
    
    private static void setCurrentSchema(Connection conn) throws SQLException {
        System.out.println("Setting current schema to CTS1...");
        try (Statement stmt = conn.createStatement()) {
            stmt.execute("SET SCHEMA CTS1");
            System.out.println("Current schema set to CTS1.");
        }
    }
    
    private static void executeDdlFile(Connection conn, String ddlFilePath) throws SQLException {
        System.out.println("Reading DDL file from: " + ddlFilePath);
        List<String> sqlStatements = parseDdlFile(ddlFilePath);
        System.out.println("Found " + sqlStatements.size() + " SQL statements. Executing...");
        
        try (Statement stmt = conn.createStatement()) {
            for (String sql : sqlStatements) {
                String trimmedSql = sql.trim();
                if (trimmedSql.isEmpty()) {
                    continue;
                }
                
                try {
                    stmt.execute(trimmedSql);
                } catch (SQLException e) {
                    // Ignore DROP errors (tables might not exist yet)
                    if (trimmedSql.toUpperCase().startsWith("DROP")) {
                        // Silently ignore DROP errors
                    } else {
                        System.out.println("Warning executing SQL: " + trimmedSql + 
                                         " (SQLState: " + e.getSQLState() + "): " + e.getMessage());
                    }
                }
            }
            System.out.println("DDL execution completed.");
        }
    }
    
    private static List<String> parseDdlFile(String path) {
        List<String> statements = new ArrayList<>();
        StringBuilder currentStatement = new StringBuilder();
        
        try (BufferedReader reader = new BufferedReader(new FileReader(path))) {
            String line;
            boolean inBlockComment = false;
            
            while ((line = reader.readLine()) != null) {
                String trimmed = line.trim();
                
                // Skip empty lines
                if (trimmed.isEmpty()) {
                    continue;
                }
                
                // Handle block comments
                if (trimmed.startsWith("/*")) {
                    inBlockComment = true;
                }
                if (inBlockComment) {
                    if (trimmed.endsWith("*/")) {
                        inBlockComment = false;
                    }
                    continue;
                }
                
                // Skip single-line comments
                if (trimmed.startsWith("--") || trimmed.startsWith("#")) {
                    continue;
                }
                
                // Append line to current statement
                currentStatement.append(line).append("\n");
                
                // Check if statement is complete (ends with semicolon)
                if (trimmed.endsWith(";")) {
                    String sql = currentStatement.toString().trim();
                    // Remove trailing semicolon
                    if (sql.endsWith(";")) {
                        sql = sql.substring(0, sql.length() - 1).trim();
                    }
                    if (!sql.isEmpty()) {
                        statements.add(sql);
                    }
                    currentStatement.setLength(0);
                }
            }
            
            // Add any remaining statement
            if (currentStatement.length() > 0) {
                String sql = currentStatement.toString().trim();
                if (sql.endsWith(";")) {
                    sql = sql.substring(0, sql.length() - 1).trim();
                }
                if (!sql.isEmpty()) {
                    statements.add(sql);
                }
            }
            
        } catch (IOException e) {
            System.err.println("Failed to read DDL file: " + e.getMessage());
            e.printStackTrace();
        }
        
        return statements;
    }
    
    private static void shutdownDatabase(String shutdownUrl) {
        System.out.println("Shutting down database: " + shutdownUrl);
        try {
            DriverManager.getConnection(shutdownUrl);
            System.out.println("Warning: Database shutdown succeeded without throwing expected exception.");
        } catch (SQLException e) {
            String sqlState = e.getSQLState();
            // SQLState 08006 is the expected state for successful Derby database shutdown
            if ("08006".equals(sqlState) || 
                (e.getMessage() != null && e.getMessage().contains("shutdown"))) {
                System.out.println("Database shut down successfully (SQLState: " + sqlState + ").");
            } else {
                System.err.println("Unexpected error during database shutdown (SQLState: " + sqlState + "):");
                e.printStackTrace();
                System.exit(1);
            }
        }
    }
}

// Made with Bob
