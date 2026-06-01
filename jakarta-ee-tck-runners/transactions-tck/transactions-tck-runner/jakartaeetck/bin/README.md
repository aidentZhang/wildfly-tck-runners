# Jakarta EE TCK Binary Directory

This directory contains configuration files and resources required for running the Jakarta Transactions TCK.

## Contents

### ts.jte - JavaTest Environment Configuration

The `ts.jte` file is the JavaTest Environment configuration file that contains TCK test configuration properties. This file defines:

- Test environment settings
- Server connection parameters
- Database configuration
- Deployment settings
- Test execution parameters

This file is copied from the reference implementation during the build process and may be customized for the WildFly test environment.

### certificates/ - SSL Certificates

The `certificates/` directory contains SSL certificate files required for AppClient tests that use secure connections:

- `clientcert.jks` - Java KeyStore containing client certificates
- `clientcert.p12` - PKCS12 format client certificate
- `cts_cert` - Certificate file for TCK test suite

These certificate files are essential for running SSL-enabled AppClient tests in the Jakarta Transactions TCK.

## Build Process

These files are copied from the transactions-tck-reference module during the build process to ensure the test environment has all necessary configuration and security resources.

## Usage

The files in this directory are automatically used by the TCK test execution framework. No manual intervention is typically required unless you need to customize the test environment configuration.