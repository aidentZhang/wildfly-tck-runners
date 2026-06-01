<!--
  ~ Copyright 2024 Red Hat, Inc.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~   http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  -->

# Jakarta Transactions TCK Runner for WildFly

This module provides a comprehensive test runner for the Jakarta Transactions TCK (Technology Compatibility Kit) on WildFly application server.

## Overview

The Jakarta Transactions TCK Runner validates WildFly's implementation of the Jakarta Transactions specification through automated testing. It executes the official TCK test suite to ensure compliance with the Jakarta EE Transactions API.

## Test Coverage

The TCK includes **195 total tests** across two deployment modes:

- **166 Web Profile Tests**: Tests deployed as web applications (WAR files)
- **29 Application Client Tests**: Tests deployed as application client containers

## Prerequisites

### Environment Variables

Set the following environment variables:

```bash
export JAVA_HOME=/path/to/jdk
export WILDFLY_HOME=/path/to/wildfly
```

## Build and Setup

### Derby Database Configuration

The TCK requires an Apache Derby database for transaction testing.

#### Automatic Setup

The `DbSetup` class automatically:
1. Creates the Derby database
2. Executes DDL scripts (`derby.ddl.sql`)
3. Loads test data (`derby.dml.sql`)
4. Configures WildFly datasources

### Run All Tests

Execute the complete TCK test suite:

```bash
mvn clean verify -Pappclient
```

### Run Web Profile Tests Only

Execute only the web-based tests (166 tests):

```bash
mvn clean verify -Dtest.mode=web
```

### Run Application Client Tests Only

Execute only the application client tests (29 tests):

```bash
mvn clean verify -Dtest.mode=appclient
```

### Run Specific Test

Execute a single test class:

```bash
mvn clean verify -Dit.test=TransactionTestName
```
### Run with Local TCK (Skip Download)

If you have already built and installed the transactions-tck locally in your Maven repository, you can skip the download step:

```bash
mvn clean verify -Pappclient -P!download-tck
```

This is useful when you're working with a locally built version of the TCK or want to avoid re-downloading it on subsequent runs.


## Configuration

### TCK Properties (`ts.jte`)

Key configuration properties:

```properties
# WildFly installation
javaee.home=${wildfly.home}

# Database configuration
jdbc.db=derby
jdbc.url=jdbc:derby://localhost:1527/derbyDB
jdbc.user=cts1
jdbc.passwd=cts1

# Test execution
test.mode=standalone
harness.log.traceflag=true
```

### WildFly Server Configuration

The `setup-database.cli` script configures:

1. **Derby JDBC Driver**
   ```
   /subsystem=datasources/jdbc-driver=derby:add(
       driver-name=derby,
       driver-module-name=org.apache.derby
   )
   ```
2. **Datasources**
   - `java:jboss/datasources/TransactionDS` - Main datasource
   - `java:jboss/datasources/TransactionXADS` - XA datasource

3. **Transaction Manager**
   - Default timeout: 300 seconds
   - Recovery enabled
   - JTS disabled (local transactions only)
   
<!-- Made with Bob -->