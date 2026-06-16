# Derby SQL Files for Transactions TCK

This directory contains SQL files used to set up the Derby database for the Jakarta Transactions TCK.

## Files

### derby.ddl.sql
Database schema definition file that creates the CTS1 schema and all required tables for the Transactions TCK tests. This file contains:
- DROP statements for existing tables (ignored if tables don't exist)
- CREATE TABLE statements for 40+ tables including:
  - Transaction test tables (ctstable1, ctstable2, TxBean_Tab1, TxBean_Tab2, etc.)
  - JDBC datatype test tables (Numeric_Tab, Decimal_Tab, Date_Tab, etc.)
  - Integration test tables (Integration_Tab, BB_Tab, JTA_Tab1, JTA_Tab2, etc.)
  - Deployment test tables (Deploy_Tab1-5, Coffee_Table variants, etc.)
  - Security test tables (caller, caller_groups, SEC_Tab1)
  - XA test tables (Xa_Tab1, Xa_Tab2)

### derby.dml.sql
Data manipulation language statements file containing:
- Named SQL statements used by TCK tests
- INSERT, UPDATE, DELETE, and SELECT queries
- Prepared statement templates with parameter placeholders
- Test data initialization statements

### password.txt
Database password configuration file used by the application server for database authentication.

## Usage

These SQL files are executed by the `DbSetup.java` utility during the build process to initialize the Derby database at `${jboss.home}/standalone/data/derbyDB`.

The setup process:
1. Creates the Derby database (if it doesn't exist)
2. Creates the CTS1 schema
3. Executes all DDL statements from derby.ddl.sql
4. Properly shuts down the Derby database

## Notes

- The DDL file includes both DROP and CREATE statements to ensure a clean database state
- DROP errors are silently ignored (tables may not exist on first run)
- All tables are created in the CTS1 schema
- The database uses credentials: cts1/cts1