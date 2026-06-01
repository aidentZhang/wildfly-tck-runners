<!--
  ~ Copyright The WildFly Authors
  ~ SPDX-License-Identifier: Apache-2.0
  -->

# Jakarta Transactions TCK Runner for WildFly

This module provides a comprehensive test runner for the Jakarta Transactions TCK (Technology Compatibility Kit) on WildFly application server.

## Overview

The Jakarta Transactions TCK Runner validates WildFly's implementation of the Jakarta Transactions specification by executing the official TCK test suite. This runner includes custom Arquillian extensions, database setup utilities, and configuration files necessary to run the complete test suite.

## Test Coverage

The Transactions TCK includes **195 tests** across two deployment modes:

- **166 Web-based tests**: Tests deployed as web applications (WAR files) using Servlet and JSP containers
- **29 AppClient tests**: Tests deployed as application client containers (EJB tests)

### Test Categories

- **Transactional CDI Tests**: Tests for `@Transactional` annotation support in CDI beans
- **Transaction Propagation Tests**: Tests for transaction context propagation across components
- **UserTransaction Tests**: Tests for programmatic transaction management via `UserTransaction` API
- **XA Transaction Tests**: Tests for distributed transaction coordination

## Architecture

### Module Structure

```
transactions-tck/
├── pom.xml                          # Parent POM
├── transactions-tck-setup/          # TCK artifact download and unpacking
│   └── pom.xml
└── transactions-tck-runner/         # Main test execution module
    ├── pom.xml
    ├── derby-required               # Marker file indicating Derby dependency
    ├── META-INF/
    │   └── application-client.xml   # AppClient deployment descriptor
    ├── jakartaeetck/
    │   └── bin/
    │       ├── ts.jte               # JavaTest environment configuration
    │       ├── README.md            # TCK binary directory documentation
    │       └── certificates/        # SSL certificates for AppClient tests
    ├── sql/
    │   └── derby/
    │       ├── derby.ddl.sql        # Database schema definition
    │       ├── derby.dml.sql        # Named SQL statements
    │       ├── password.txt         # Database password file
    │       └── README.md            # SQL files documentation
    └── src/
        ├── main/java/               # Arquillian extensions and utilities
        │   └── org/jboss/wildfly/tck/transactions/
        │       ├── AppClientInitialContextFactory.java
        │       ├── Validate.java
        │       ├── WildFlyExceptionTransformer.java
        │       ├── WildFlyExtension.java
        │       └── WildFlyTestArchiveProcessor.java
        ├── main/resources/
        │   └── META-INF/services/
        │       └── org.jboss.arquillian.core.spi.LoadableExtension
        ├── test/java/               # Database setup utilities
        │   └── org/jboss/wildfly/tck/transactions/
        │       └── DbSetup.java
        └── test/resources/          # Test configuration files
            ├── arquillian.xml       # Arquillian container configuration
            ├── appclient-arquillian.xml  # AppClient-specific configuration
            └── setup-database.cli   # WildFly CLI script for datasource setup
```

## Prerequisites

- **Java**: JDK 11 or later
- **Maven**: 3.6.0 or later
- **WildFly**: Latest version (configured via parent POM)
- **Derby Database**: 10.16.1.1 (automatically managed)

## Building and Running

### Default Build (Web Tests Only)

Run the web-based tests (166 tests):

```bash
mvn clean install
```

### With AppClient Tests

Run all tests including AppClient tests (195 tests):

```bash
mvn clean install -Pappclient
```

### Skip TCK Download

If you already have the TCK artifacts in your local Maven repository:

```bash
mvn clean install -Pappclient -P!download-tck
```

### Custom WildFly Installation

Specify a custom WildFly installation:

```bash
mvn clean install -Djboss.home=/path/to/wildfly
```

## Configuration

### ts.jte - JavaTest Environment

The `jakartaeetck/bin/ts.jte` file contains TCK test configuration properties including:

- Test environment settings
- Server connection parameters
- Database configuration
- Deployment settings
- Test execution parameters

This file is automatically copied to `target/ts.jte` during the build process.

### Arquillian Configuration

Two Arquillian configuration files are provided:

#### arquillian.xml (Web Tests)

- **Container**: `tck-javatest` (default)
- **Protocol**: JavaTest protocol for web-based tests
- **Configuration**: Managed WildFly container with standard settings

#### appclient-arquillian.xml (AppClient Tests)

- **Container**: `tck-appclient`
- **Protocol**: AppClient protocol for EJB tests
- **Configuration**: Standalone container instance for AppClient tests

### Database Configuration

The TCK requires a Derby database with the CTS1 schema. Database setup is automated during the build process.

#### Datasources

Two datasources are configured via `setup-database.cli`:

- **ExampleDS**: `java:jboss/datasources/ExampleDS`
- **DB1**: `java:jboss/datasources/DB1`

Both datasources point to the same Derby database at `${jboss.home}/standalone/data/derbyDB`.

#### Database Credentials

- **Username**: `cts1`
- **Password**: `cts1`
- **Schema**: `CTS1`

### Certificate Management

SSL certificates for AppClient tests are automatically extracted from the TCK artifact to `jakartaeetck/bin/certificates/`:

- `clientcert.jks` - Java KeyStore containing client certificates
- `clientcert.p12` - PKCS12 format client certificate
- `cts_cert` - Certificate file for TCK test suite

## Key Components

### WildFlyExtension

Arquillian LoadableExtension that registers custom components:

- **WildFlyTestArchiveProcessor**: Modifies test archives before deployment
- **WildFlyExceptionTransformer**: Transforms deployment exceptions for better error reporting

### WildFlyTestArchiveProcessor

Processes test archives to:

- Add required dependencies
- Modify deployment descriptors
- Configure test-specific settings

### AppClientInitialContextFactory

Custom InitialContextFactory for AppClient tests that provides proper JNDI context initialization for the WildFly environment.

### DbSetup

Database initialization utility that:

1. Creates the Derby database (if it doesn't exist)
2. Creates the CTS1 schema
3. Executes DDL statements from `derby.ddl.sql`
4. Properly shuts down the Derby database

Executed automatically during the `process-test-classes` phase.

## Database Setup

### Automated Setup

The database is automatically initialized during the Maven build:

1. **DbSetup Execution** (`process-test-classes` phase):
   - Creates Derby database at `${jboss.home}/standalone/data/derbyDB`
   - Creates CTS1 schema
   - Executes DDL from `sql/derby/derby.ddl.sql`

2. **WildFly Configuration** (`process-test-classes` phase):
   - Executes `setup-database.cli` script
   - Configures Derby JDBC driver
   - Creates ExampleDS and DB1 datasources

### Manual Database Setup

If needed, you can manually set up the database:

```bash
# Run DbSetup utility
java -cp target/test-classes:derby.jar \
  org.jboss.wildfly.tck.transactions.DbSetup \
  jdbc:derby:/path/to/derbyDB \
  sql/derby/derby.ddl.sql

# Configure WildFly
${JBOSS_HOME}/bin/jboss-cli.sh --file=src/test/resources/setup-database.cli
```

### Database Schema

The CTS1 schema includes 4 tables:

- **JTA_Tab1**: Transaction propagation test table (KEY_ID, COF_NAME, PRICE)
- **JTA_Tab2**: Transaction propagation test table (KEY_ID, CHOC_NAME, PRICE)
- **caller**: Security/authentication table (name, password)
- **caller_groups**: Security/authentication groups table (caller_name, group_name)

## Project Structure

### transactions-tck-setup

Downloads and unpacks the Jakarta Transactions TCK artifact. This module:

- Declares dependency on `jakarta.tck:transactions-tck`
- Unpacks TCK JAR to `target/tck` directory
- Provides TCK artifacts to the runner module

### transactions-tck-runner

Main test execution module that:

- Configures WildFly server
- Sets up Derby database
- Executes TCK tests via Maven Failsafe plugin
- Generates test reports

## Test Execution Flow

1. **Setup Phase** (`generate-test-resources`):
   - Copy SQL files to `target/test-classes/sql/derby/`
   - Copy ts.jte to `target/test-classes/jakartaeetck/bin/`
   - Unpack certificates from TCK artifact

2. **Database Initialization** (`process-test-classes`):
   - Execute DbSetup to create Derby database and schema
   - Execute setup-database.cli to configure WildFly datasources

3. **Test Execution** (`integration-test`):
   - Start WildFly managed container
   - Deploy test archives via Arquillian
   - Execute TCK tests
   - Collect results

4. **Verification** (`verify`):
   - Verify test results
   - Generate reports
   - Fail build if tests fail

## Troubleshooting

### Database Connection Issues

If you encounter database connection errors:

1. Verify Derby database exists: `${jboss.home}/standalone/data/derbyDB`
2. Check database credentials in `setup-database.cli`
3. Ensure CTS1 schema was created successfully
4. Review DbSetup output in build logs

### AppClient Test Failures

If AppClient tests fail:

1. Verify certificates are extracted: `jakartaeetck/bin/certificates/`
2. Check `appclient-arquillian.xml` configuration
3. Ensure `ts.home`, `project.basedir`, and `jboss.home` system properties are set
4. Review AppClient container logs

### Test Discovery Issues

If tests are not discovered:

1. Verify TCK artifact is downloaded: `target/dependency/lib/transactions-tck.jar`
2. Check `dependenciesToScan` configuration in POM
3. Ensure test includes patterns match TCK test classes
4. Review Maven Failsafe plugin output

### WildFly Configuration Issues

If WildFly fails to start or configure:

1. Verify `jboss.home` property points to valid WildFly installation
2. Check `setup-database.cli` script execution output
3. Ensure Derby JDBC driver module is available
4. Review WildFly server logs: `${jboss.home}/standalone/log/server.log`

### Build Performance

To speed up builds:

- Use `-P!download-tck` to skip TCK download if already cached
- Use `-DskipTests` to skip test execution (build only)
- Use `-Dmaven.test.failure.ignore=true` to continue on test failures

## Additional Resources

- [Jakarta Transactions Specification](https://jakarta.ee/specifications/transactions/)
- [Jakarta Transactions TCK](https://github.com/jakartaee/transactions)
- [WildFly Documentation](https://docs.wildfly.org/)
- [Arquillian Documentation](http://arquillian.org/guides/)

## License

This project is licensed under the Apache License 2.0. See the LICENSE file for details.

---

<!-- Made with Bob -->