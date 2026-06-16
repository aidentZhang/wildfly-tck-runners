# SSL Certificate Files for Jakarta Transactions TCK

This directory contains SSL certificate files required for running AppClient tests with secure connections in the Jakarta Transactions TCK.

## Certificate Files

### clientcert.jks
- **Type**: Java KeyStore (JKS)
- **Purpose**: Contains client certificates used for SSL/TLS authentication
- **Usage**: Used by Java applications to establish secure connections with the application server
- **Format**: Binary keystore file

### clientcert.p12
- **Type**: PKCS#12 Certificate
- **Purpose**: Client certificate in PKCS#12 format
- **Usage**: Alternative certificate format that can be used across different platforms and applications
- **Format**: Binary PKCS#12 file

### cts_cert
- **Type**: Certificate File
- **Purpose**: Certificate file for the TCK Compatibility Test Suite (CTS)
- **Usage**: Used by the TCK test framework for certificate-based authentication and validation
- **Format**: Certificate file

## Purpose

These certificate files are essential for:

1. **SSL-Enabled AppClient Tests**: Tests that require secure client-server communication
2. **Certificate-Based Authentication**: Tests that validate certificate-based security mechanisms
3. **Secure Connection Testing**: Ensuring that the application server properly handles SSL/TLS connections

## Security Note

These are test certificates intended for TCK testing purposes only. They should not be used in production environments.

## Source

These certificate files are copied from the Jakarta EE TCK reference implementation during the build process. They are standard test certificates provided by the Jakarta EE TCK for compatibility testing.