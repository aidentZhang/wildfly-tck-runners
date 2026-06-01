#
# Copyright The WildFly Authors
# SPDX-License-Identifier: Apache-2.0
#

# Jakarta Transactions TCK Configuration for WildFly
# Minimal configuration - only essential properties for running 195 transaction tests

# Work/Report Directories (required by TCK harness)
work.dir=/home/jenkins/agent/workspace/jakartaee-tck_10.0.x/JTWork
report.dir=/home/jenkins/agent/workspace/jakartaee-tck_10.0.x/JTReport

# Derby Database Configuration (required for transaction tests)
derby.server=localhost
derby.port=1527
derby.user=cts1
derby.passwd=cts1

# Derby Embedded Configuration (for XA datasource in transaction tests)
derbyEmbedded.dbName=/tmp/DerbyDB
derbyEmbedded.user=cts1
derbyEmbedded.passwd=cts1

# JDBC Configuration (referenced by TCK tests)
jdbc.poolName=cts-derby-pool
jdbc.db=derby

# User Credentials (required by TCK tests)
user=j2ee
password=j2ee

# JTA SQL Statements (required by transaction tests)
JTA_Tab1_Insert=insert into JTA_Tab1 values(?, ?, ?)
JTA_Tab2_Insert=insert into JTA_Tab2 values(?, ?, ?)
JTA_Tab1_Delete=delete from JTA_Tab1
JTA_Tab2_Delete=delete from JTA_Tab2
JTA_Delete1=delete from JTA_Tab1 where KEY_ID = ?
JTA_Delete2=delete from JTA_Tab2 where KEY_ID = ?
JTA_Tab1_Update1=update JTA_Tab1 set COF_NAME = ? where KEY_ID = ?
JTA_Tab2_Update1=update JTA_Tab2 set CHOC_NAME = ? where KEY_ID = ?
JTA_Tab1_Update2=update JTA_Tab1 set PRICE = ? where KEY_ID = ?
JTA_Tab2_Update2=update JTA_Tab2 set PRICE = ? where KEY_ID = ?
JTA_Tab1_Select=select * from JTA_Tab1
JTA_Tab2_Select=select * from JTA_Tab2
JTA_Tab1_Select1=select KEY_ID,  COF_NAME, PRICE FROM JTA_Tab1 where KEY_ID = ?
JTA_Tab2_Select1=select KEY_ID,  CHOC_NAME, PRICE FROM JTA_Tab2 where KEY_ID = ?

# Transaction Synchronization Registry (required by transaction tests)
tsrJndiName=java:comp/TransactionSynchronizationRegistry

# Web Server Configuration (required by servlet/JSP tests)
webServerHost=localhost
webServerPort=8080
webServerHost.2=localhost
webServerPort.2=8002

# Made with Bob
