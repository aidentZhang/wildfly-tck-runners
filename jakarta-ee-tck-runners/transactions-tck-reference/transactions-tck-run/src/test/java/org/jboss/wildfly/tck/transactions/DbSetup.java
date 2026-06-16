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

public class DbSetup {
    public static void main(String[] args) {
        if (args.length == 0) {
            System.err.println("No connection URL provided.");
            System.exit(1);
        }
        String baseUrl = args[0];
        String ddlFilePath = args.length > 1 ? args[1] : null;

        String createUrl = baseUrl + ";create=true";
        String shutdownUrl = baseUrl + ";shutdown=true";

        System.out.println("Connecting to database: " + createUrl);
        try (Connection conn = DriverManager.getConnection(createUrl)) {
            System.out.println("Successfully connected to database. Creating schema CTS1...");
            try (Statement stmt = conn.createStatement()) {
                stmt.execute("CREATE SCHEMA CTS1");
                System.out.println("Schema CTS1 created successfully.");
            } catch (SQLException e) {
                // SQLState X0Y68 indicates the schema already exists in Derby
                if ("X0Y68".equals(e.getSQLState())) {
                    System.out.println("Schema CTS1 already exists.");
                } else {
                    System.err.println("Unexpected SQL error creating schema (SQLState: " + e.getSQLState() + "):");
                    e.printStackTrace();
                    System.exit(1);
                }
            }

            // Set current schema to CTS1 so DDL statements run in the CTS1 schema
            try (Statement stmt = conn.createStatement()) {
                stmt.execute("SET SCHEMA CTS1");
                System.out.println("Current schema set to CTS1.");
            } catch (SQLException e) {
                System.err.println("Failed to set schema to CTS1:");
                e.printStackTrace();
                System.exit(1);
            }

            // Execute DDL file if provided
            if (ddlFilePath != null) {
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
                            // Ignore drop errors (tables might not exist yet)
                            if (trimmedSql.toUpperCase().startsWith("DROP")) {
                                // Quietly ignore
                            } else {
                                System.out.println("Warning executing SQL: " + trimmedSql + " (SQLState: " + e.getSQLState() + "): " + e.getMessage());
                            }
                        }
                    }
                    System.out.println("DDL execution completed.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Failed to connect to database for creation:");
            e.printStackTrace();
            System.exit(1);
        }

        System.out.println("Shutting down database: " + shutdownUrl);
        try {
            DriverManager.getConnection(shutdownUrl);
            System.out.println("Warning: Database shutdown succeeded without throwing expected exception.");
        } catch (SQLException e) {
            String sqlState = e.getSQLState();
            // 08006 is the expected SQLState for successful Derby database shutdown
            if ("08006".equals(sqlState) || (e.getMessage() != null && e.getMessage().contains("shutdown"))) {
                System.out.println("Database shut down successfully (SQLState: " + sqlState + ").");
            } else {
                System.err.println("Unexpected error during database shutdown (SQLState: " + sqlState + "):");
                e.printStackTrace();
                System.exit(1);
            }
        }
    }

    private static List<String> parseDdlFile(String path) {
        List<String> statements = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(path))) {
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                String trimmed = line.trim();
                if (trimmed.startsWith("--") || trimmed.startsWith("#") || trimmed.isEmpty()) {
                    continue;
                }
                sb.append(line).append("\n");
                if (trimmed.endsWith(";")) {
                    // Remove the trailing semicolon for execution
                    String sql = sb.toString().trim();
                    if (sql.endsWith(";")) {
                        sql = sql.substring(0, sql.length() - 1);
                    }
                    statements.add(sql);
                    sb.setLength(0);
                }
            }
            if (sb.length() > 0) {
                String sql = sb.toString().trim();
                if (sql.endsWith(";")) {
                    sql = sql.substring(0, sql.length() - 1);
                }
                if (!sql.isEmpty()) {
                    statements.add(sql);
                }
            }
        } catch (IOException e) {
            System.err.println("Failed to read DDL file: " + e.getMessage());
        }
        return statements;
    }
}
