jte.version=@JTE_VERSION@
work.dir=/home/jenkins/agent/workspace/jakartaee-tck_10.0.x/JTWork
report.dir=/home/jenkins/agent/workspace/jakartaee-tck_10.0.x/JTReport
if.existing.work.report.dirs=auto
javatest.timeout.factor=1
javaee.level=full
javaee.home=/Users/alwjosep/Documents/jakartaee-tck/glassfish-runner/jsonp-platform-tck/target/glassfish8
orb.host=localhost
orb.port=4848
javaee.home.ri=
orb.host.ri=
orb.port.ri=3700
ts.display=:0.0
endorsed.dirs=${javaee.home}/modules/endorsed
endorsed.dirs.ri=${javaee.home.ri}/modules/endorsed
ri.admin.user=admin
ri.admin.passwd=
ri.admin.host=${orb.host.ri}
ri.admin.port=4848
ri.admin=${javaee.home.ri}/bin/asadmin
ri.server=server
ri.domain.dir=${javaee.home.ri}/domains
ri.domain.name=domain1
ri.domain=${ri.domain.dir}/${ri.domain.name}
ri.asenv.loc=${javaee.home.ri}/config
ri.imqbin.loc=${javaee.home.ri}/../mq/bin
ri.lib=${javaee.home.ri}/lib
ri.log.file.location=${ri.domain}/logs
ri.modules=${javaee.home.ri}/modules
ri.imq.share.lib=${javaee.home.ri}/../mq/lib
ri.jvm.options=-Doracle.jdbc.J2EE13Compliant=true:-Xmx4096m:-Dj2eelogin.name=${user}:-Dj2eelogin.password=${password}:-Deislogin.name=${user1}:-Deislogin.password=${password1}:-Dtest.ejb.stateful.timeout.wait.seconds=${test.ejb.stateful.timeout.wait.seconds}:-DwebServerPort.2=${webServerPort.2}:-DwebServerHost.2=${webServerHost.2}:-Dcsiv2.save.log.file=${harness.log.traceflag}:-Djavax.xml.accessExternalStylesheet=all:-Djavax.xml.accessExternalDTD=file,http
ri.jvm.options.remove=-Xmx512m:${ri.jvm.options}
ri.java.endorsed.dirs=${endorsed.dirs.ri}
ri.applicationRoot=c:
ri.and.vi.run.on.same.host=true
ri.orb.iiop.orbserverid=200
vi.admin.user=admin
vi.admin.passwd=
vi.admin.host=${orb.host}
vi.admin.port=4848
vi.admin=${javaee.home}/bin/asadmin
vi.server=server
vi.domain.dir=${javaee.home}/domains
vi.domain.name=domain1
vi.domain=${vi.domain.dir}/${vi.domain.name}
vi.asenv.loc=${javaee.home}/config
vi.imqbin.loc=${javaee.home}/../mq/bin
vi.lib=${javaee.home}/server/lib
vi.log.file.location=${vi.domain}/logs
vi.modules=${javaee.home}/modules
vi.imq.share.lib=${javaee.home}/../mq/lib
vi.jvm.options=-Doracle.jdbc.J2EE13Compliant=true:-Xmx4096m:-Dj2eelogin.name=${user}:-Dj2eelogin.password=${password}:-Deislogin.name=${user1}:-Deislogin.password=${password1}:-Dtest.ejb.stateful.timeout.wait.seconds=${test.ejb.stateful.timeout.wait.seconds}:-DwebServerPort.2=${webServerPort.2}:-DwebServerHost.2=${webServerHost.2}:-Dcsiv2.save.log.file=${harness.log.traceflag}:-Djavax.xml.accessExternalStylesheet=all:-Djavax.xml.accessExternalDTD=file,http
vi.jvm.options.remove=-Xmx512m:${vi.jvm.options}
vi.java.endorsed.dirs=${endorsed.dirs}
vi.applicationRoot=c:
s1as.admin.user=admin
s1as.admin.passwd=
s1as.admin.host=${orb.host}
s1as.admin.port=4848
s1as.admin=${javaee.home}/bin/asadmin
s1as.server=server
s1as.domain.dir=${javaee.home}/domains
s1as.domain.name=domain1
s1as.domain=${s1as.domain.dir}/${s1as.domain.name}
s1as.asenv.loc=${javaee.home}/config
s1as.imqbin.loc=${javaee.home}/../mq/bin
s1as.lib=${javaee.home}/lib
s1as.modules=${javaee.home}/modules
s1as.imq.share.lib=${javaee.home}/../mq/lib
s1as.jvm.options=-Doracle.jdbc.J2EE13Compliant=true:-Xmx4096m:-Dj2eelogin.name=${user}:-Dj2eelogin.password=${password}:-Deislogin.name=${user1}:-Deislogin.password=${password1}:-Dtest.ejb.stateful.timeout.wait.seconds=${test.ejb.stateful.timeout.wait.seconds}:-DwebServerPort.2=${webServerPort.2}:-DwebServerHost.2=${webServerHost.2}
s1as.jvm.options.remove=-Xmx512m:${s1as.jvm.options}
s1as.java.endorsed.dirs=${endorsed.dirs}
s1as.applicationRoot=c:
sjsas.das.orb.port=3700
sjsas.das.orb.host=${orb.host}
sjsas.das.webServerPort=8000
sjsas.das.securedWebServicePort=1043
sjsas.nodeagent.name=node-agent-1
sjsas.nodeinstance.name=server-1
sjsas.master.password=changeit
sjsas.instance.config.dir=config
sjsas.cts.timer.resource=derby
sjsas.cmp.backend=derby
sjsas.node.agent.dir.name=n
sjsas.env.type=das
s1as.targets=${s1as.server}
s1as.pe.jmsServer=imqbroker
s1as.se.jmsServer=imqbroker
extension.dir=${s1as.domain}/lib
instance.listenerName=orb-listener-1
tz=US/Eastern
jdbc.lib.class.path=${ts.home}/internal/lib
derby.dbName=derbyDB
derby.server=${orb.host}
derby.port=1527
derby.port.ri=1527
derby.dml.file=derby/derby.dml.sql
derby.user=cts1
derby.passwd=cts1
derby.url=jdbc:derby://${derby.server}:${derby.port}/${derby.dbName};create=true
derby.driver=org.apache.derby.jdbc.ClientDriver
derby.home=${javaee.home}/../javadb
derby.system.home=${derby.home}/databases
derby.classpath=${ts.home}/lib/dbprocedures.jar${pathsep}${derby.home}/lib/derbynet.jar${pathsep}${derby.home}/lib/derbyshared.jar${pathsep}${derby.home}/lib/derbytools.jar
derby.classes=${derby.home}/lib/derbyclient.jar${pathsep}${derby.home}/lib/derbyshared.jar${pathsep}${derby.home}/lib/derbytools.jar
derby.poolName=cts-derby-pool
derby.dataSource=org.apache.derby.jdbc.ClientDataSource
derby.properties=DatabaseName\=\"${derby.dbName}\":user\=${derby.user}:password\=${derby.passwd}:serverName\=${derby.server}:portNumber=${derby.port}
derby.startup.delay=5
derbyEmbedded.dbName=/tmp/DerbyDB
derbyEmbedded.server=${orb.host}
derbyEmbedded.port=1527
derbyEmbedded.dml.file=derby/derby.dml.sql
derbyEmbedded.user=cts1
derbyEmbedded.passwd=cts1
derbyEmbedded.url=jdbc:derby:${derbyEmbedded.dbName};create=true
derbyEmbedded.driver=org.apache.derby.jdbc.EmbeddedDriver
derbyEmbedded.classes=${javaee.home}/../javadb/lib/derby.jar${pathsep}${javaee.home}/../javadb/lib/derbyshared.jar${pathsep}${javaee.home}/../javadb/lib/derbytools.jar${pathsep}${ts.home}/lib/dbprocedures.jar
derbyEmbedded.poolName=cts-derbyEmbedded-pool
derbyEmbedded.dataSource=org.apache.derby.jdbc.EmbeddedDataSource
derbyEmbedded.pool.url='jdbc\\:derby\\:${derbyEmbedded.dbName}\\;create=true'
derbyEmbedded.properties=DatabaseName\=\"${derbyEmbedded.dbName}\":user\=${derbyEmbedded.user}:password\=${derbyEmbedded.passwd}
db2.dbName=cts
db2.server=${orb.host}
db2.port=50000
db2.dml.file=db2/db2.dml.sql
db2.user=db2inst1
db2.passwd=ibmdb2
db2.url=jdbc:db2:${db2.dbName}
db2.driver=com.ibm.db2.jcc.DB2Driver
db2.classes=${jdbc.lib.class.path}/db2jcc.jar:${jdbc.lib.class.path}/db2jcc_license_cu.jar:${jdbc.lib.class.path}/db2java.zip
db2.poolName=cts-db2-pool
db2.dataSource=com.ibm.db2.jcc.DB2SimpleDataSource
db2.properties=user=${db2.user}:password=${db2.passwd}:databaseName=${db2.dbName}:driverType=2:deferPrepares\=false
db2DD.dbName=cts
db2DD.server=${orb.host}
db2DD.port=50000
db2DD.dml.file=db2/db2.dml.sql
db2DD.user=db2inst1
db2DD.passwd=ibmdb2
db2DD.url=jdbc:datadirect:db2://${db2DD.server}:${db2DD.port};DatabaseName\=${db2DD.dbName}
db2DD.driver=com.ddtek.jdbc.db2.DB2Driver
db2DD.classes=${jdbc.lib.class.path}/util.jar${pathsep}${jdbc.lib.class.path}/db2.jar${pathsep}${jdbc.lib.class.path}/base.jar
db2DD.poolName=cts-db2-DataDirect-pool
db2DD.dataSource=com.ddtek.jdbcx.db2.DB2DataSource
db2DD.properties=user\=${db2DD.user}:password\=${db2DD.passwd}:ServerName\=${db2DD.server}:portNumber\=${db2DD.port}:databasename\=${db2DD.dbName}
db2Sun.dbName=cts
db2Sun.server=${orb.host}
db2Sun.port=50000
db2Sun.dml.file=db2/db2.dml.sql
db2Sun.user=db2inst1
db2Sun.passwd=ibmdb2
db2Sun.url=jdbc:sun:db2://${db2Sun.server}:${db2Sun.port};DatabaseName\=${db2Sun.dbName}
db2Sun.driver=com.sun.sql.jdbc.db2.DB2Driver
db2Sun.classes=${jdbc.lib.class.path}/smdb2.jar
db2Sun.poolName=cts-db2-Sun-pool
db2Sun.dataSource=com.sun.sql.jdbcx.db2.DB2DataSource
db2Sun.properties=user\=${db2Sun.user}:password\=${db2Sun.passwd}:ServerName\=${db2Sun.server}:portNumber\=${db2Sun.port}:databasename\=${db2Sun.dbName}
mssqlserver.dbName=cts
mssqlserver.server=${orb.host}
mssqlserver.port=1433
mssqlserver.dml.file=mssqlserver/mssqlserver.dml.sql
mssqlserver.user=guest
mssqlserver.passwd=guest
mssqlserver.url=jdbc:microsoft:sqlserver://${mssqlserver.server}:${mssqlserver.port}
mssqlserver.driver=com.microsoft.sqlserver.jdbc.SQLServerDriver
mssqlserver.classes=${jdbc.lib.class.path}/sqljdbc.jar
mssqlserver.poolName=cts-mssqlserver-pool
mssqlserver.dataSource=com.microsoft.sqlserver.jdbc.SQLServerDataSource
mssqlserver.properties=user\=${mssqlserver.user}:password\=${mssqlserver.passwd}:ServerName\=${mssqlserver.server}:portNumber\=${mssqlserver.port}
mssqlserverDD.dbName=cts
mssqlserverDD.server=${orb.host}
mssqlserverDD.port=1433
mssqlserverDD.dml.file=mssqlserver/mssqlserver.dml.sql
mssqlserverDD.user=guest
mssqlserverDD.passwd=guest
mssqlserverDD.url=jdbc:datadirect:sqlserver://${mssqlserverDD.server}:${mssqlserverDD.port}
mssqlserverDD.driver=com.ddtek.jdbc.sqlserver.SQLServerDriver
mssqlserverDD.classes=${jdbc.lib.class.path}/util.jar${pathsep}${jdbc.lib.class.path}/sqlserver.jar${pathsep}${jdbc.lib.class.path}/base.jar
mssqlserverDD.poolName=cts-mssqlserver-DataDirect-pool
mssqlserverDD.dataSource=com.ddtek.jdbcx.sqlserver.SQLServerDataSource
mssqlserverDD.properties=user\=${mssqlserverDD.user}:password\=${mssqlserverDD.passwd}:ServerName\=${mssqlserverDD.server}:portNumber\=${mssqlserverDD.port}:selectMethod\=cursor
mssqlserverInet.dbName=cts1
mssqlserverInet.server=${orb.host}
mssqlserverInet.port=1433
mssqlserverInet.dml.file=mssqlserver/mssqlserver.dml.sql
mssqlserverInet.user=cts1
mssqlserverInet.passwd=cts1
mssqlserverInet.url=jdbc:inetdae7:${mssqlserverInet.server}:${mssqlserverInet.port}
mssqlserverInet.driver=com.inet.tds.TdsDriver
mssqlserverInet.classes=${jdbc.lib.class.path}/Merlia.jar
mssqlserverInet.poolName=cts-mssqlserver-Inet-pool
mssqlserverInet.dataSource=com.inet.tds.TdsDataSource
mssqlserverInet.properties=user\=${mssqlserverInet.user}:password\=${mssqlserverInet.passwd}:ServerName\=${mssqlserverInet.server}:port\=${mssqlserverInet.port}
mssqlserverSun.dbName=cts
mssqlserverSun.server=${orb.host}
mssqlserverSun.port=1433
mssqlserverSun.dml.file=mssqlserver/mssqlserver.dml.sql
mssqlserverSun.user=guest
mssqlserverSun.passwd=guest
mssqlserverSun.url=jdbc:sun:sqlserver://${mssqlserverSun.server}:${mssqlserverSun.port}
mssqlserverSun.driver=com.sun.sql.jdbc.sqlserver.SQLServerDriver
mssqlserverSun.classes=${jdbc.lib.class.path}/smsqlserver.jar
mssqlserverSun.poolName=cts-mssqlserver-Sun-pool
mssqlserverSun.dataSource=com.sun.sql.jdbcx.sqlserver.SQLServerDataSource
mssqlserverSun.properties=user\=${mssqlserverSun.user}:password\=${mssqlserverSun.passwd}:ServerName\=${mssqlserverSun.server}:portNumber\=${mssqlserverSun.port}:selectMethod\=cursor
mysql.dbName=cts
mysql.server=${orb.host}
mysql.port=3306
mysql.dml.file=mysql/mysql.dml.sql
mysql.user=cts1
mysql.passwd=cts1
mysql.url=jdbc:mysql://${mysql.server}:${mysql.port}/${mysql.dbName}
mysql.driver=com.mysql.jdbc.Driver
mysql.classes=${jdbc.lib.class.path}/mysql-connector-java-5.1.42-bin.jar
mysql.poolName=cts-mysql-pool
mysql.dataSource=com.mysql.jdbc.jdbc2.optional.MysqlDataSource
mysql.properties=user\=${mysql.user}:password\=${mysql.passwd}:DatabaseName\=${mysql.dbName}\:ServerName\=${mysql.server}\:port\=${mysql.port}\:jdbcCompliantTruncation\=false
oracleDD.dbName=ora817
oracleDD.server=${orb.host}
oracleDD.port=1521
oracleDD.dml.file=oracle/oracle.dml.sql
oracleDD.user=la
oracleDD.passwd=la
oracleDD.url=jdbc:datadirect:oracle://${oracleDD.server};SID=${oracleDD.dbName}
oracleDD.driver=com.ddtek.jdbc.oracle.OracleDriver
oracleDD.classes=${jdbc.lib.class.path}/base.jar${pathsep}${jdbc.lib.class.path}/oracle.jar${pathsep}${jdbc.lib.class.path}/util.jar
oracleDD.poolName=cts-oracle-DataDirect-pool
oracleDD.dataSource=com.ddtek.jdbcx.oracle.OracleDataSource
oracleDD.properties=user\=${oracleDD.user}:password\=${oracleDD.passwd}:SID\="${oracleDD.dbName}":serverName=${oracleDD.server}:portNumber=${oracleDD.port}
oracle.dbName=cts
oracle.server=${orb.host}
oracle.port=1521
oracle.dml.file=oracle/oracle.dml.sql
oracle.user=cts1
oracle.passwd=cts1
oracle.url=jdbc:oracle:thin:@${oracle.server}:${oracle.port}:${oracle.dbName}
oracle.driver=oracle.jdbc.OracleDriver
oracle.classes=${jdbc.lib.class.path}/ojdbc8.jar
oracle.poolName=cts-oracle-pool
oracle.dataSource=oracle.jdbc.pool.OracleDataSource
oracle.pool.url=jdbc\\:oracle\\:thin\\:@${oracle.server}\\:${oracle.port}\\:${oracle.dbName}
oracle.properties=user\=${oracle.user}:password\=${oracle.passwd}:URL\=\"${oracle.pool.url}\"
oracleOCI.dbName=cts1
oracleOCI.server=${orb.host}
oracleOCI.port=1521
oracleOCI.dml.file=oracle/oracle.dml.sql
oracleOCI.user=cts1
oracleOCI.passwd=cts1
oracleOCI.url=jdbc:oracle:oci:@${oracleOCI.dbName}
oracleOCI.driver=oracle.jdbc.OracleDriver
oracleOCI.classes=${jdbc.lib.class.path}/ojdbc8.jar
oracleOCI.poolName=cts-oracle-oci-pool
oracleOCI.dataSource=oracle.jdbc.pool.OracleDataSource
oracleOCI.pool.url=jdbc\\:oracle\\:oci\\:@${oracleOCI.dbName}
oracleOCI.properties=user\=${oracleOCI.user}:password\=${oracleOCI.passwd}:URL\=\"${oracleOCI.pool.url}\"
oracleInet.dbName=cts1
oracleInet.server=${orb.host}
oracleInet.port=1521
oracleInet.dml.file=oracle/oracle.dml.sql
oracleInet.user=cts1
oracleInet.passwd=cts1
oracleInet.url=jdbc:inetora:${oracleInet.server}:${oracleInet.port}:${oracleInet.dbName}
oracleInet.driver=com.inet.ora.OraDriver
oracleInet.classes=${jdbc.lib.class.path}/Oranxo.jar
oracleInet.poolName=cts-oracle-Inet-pool
oracleInet.dataSource=com.inet.ora.OraDataSource
oracleInet.properties=user\=${oracleInet.user}:password\=${oracleInet.passwd}:serviceName\="${oracleInet.dbName}":serverName=${oracleInet.server}:port=${oracleInet.port}
oracleSun.dbName=ora817
oracleSun.server=${orb.host}
oracleSun.port=1521
oracleSun.dml.file=oracle/oracle.dml.sql
oracleSun.user=la
oracleSun.passwd=la
oracleSun.url=jdbc:sun:oracle://${oracleSun.server};SID=${oracleSun.dbName}
oracleSun.driver=com.sun.sql.jdbc.oracle.OracleDriver
oracleSun.classes=${jdbc.lib.class.path}/smoracle.jar
oracleSun.poolName=cts-oracle-Sun-pool
oracleSun.dataSource=com.sun.sql.jdbcx.oracle.OracleDataSource
oracleSun.properties=user\=${oracleSun.user}:password\=${oracleSun.passwd}:SID\="${oracleSun.dbName}":serverName=${oracleSun.server}:portNumber=${oracleSun.port}
pointbase.dbName=cts
pointbase.server=${orb.host}
pointbase.port=9092
pointbase.dml.file=pointbase/pointbase.dml.sql
pointbase.user=PBPUBLIC
pointbase.passwd=PBPUBLIC
pointbase.url=jdbc:pointbase:server://${pointbase.server}:${pointbase.port}/${pointbase.dbName},new
pointbase.driver=com.pointbase.jdbc.jdbcUniversalDriver
pointbase.classes=${jdbc.lib.class.path}/pbclient.jar${pathsep}${jdbc.lib.class.path}/pbembedded.jar
pointbase.poolName=cts-pointbase-pool
pointbase.dataSource=com.pointbase.jdbc.jdbcDataSource
pointbase.pool.url="jdbc\\:pointbase\\:server\\:\/\/${pointbase.server}\\:${pointbase.port}\/${pointbase.dbName},new"
pointbase.properties=user\=${pointbase.user}:password\=${pointbase.passwd}:DatabaseName\=\"${pointbase.pool.url}\"
postgresql.dbName=CTS5
postgresql.server=${orb.host}
postgresql.port=5432
postgresql.dml.file=postgresql/postgresql.dml.sql
postgresql.user=cts1
postgresql.passwd=cts1
postgresql.url=jdbc:postgresql://${postgresql.server}:${postgresql.port}/${postgresql.dbName}
postgresql.driver=org.postgresql.Driver
postgresql.classes=${jdbc.lib.class.path}/postgresql-8.4-701.jdbc4.jar
postgresql.poolName=cts-postgresql-pool
postgresql.pool.url="jdbc\\:postgresql\\:server\\:\/\/${postgresql.server}\\:${postgresql.port}\/${postgresql.dbName},new"
postgresql.dataSource=org.postgresql.ds.PGSimpleDataSource
postgresql.properties=user\=${postgresql.user}:password\=${postgresql.passwd}:DatabaseName\=${postgresql.dbName}\:ServerName\=${postgresql.server}\:port\=${postgresql.port}
sybase.dbName=cts2
sybase.server=${orb.host}
sybase.port=4100
sybase.dml.file=sybase/sybase.dml.sql
sybase.user=cts1
sybase.passwd=cts1
sybase.url=jdbc:sybase:Tds:${sybase.server}:${sybase.port}/${sybase.dbName}
sybase.driver=com.sybase.jdbc2.jdbc.SybDriver
sybase.classes=${jdbc.lib.class.path}/jconn2.jar
sybase.poolName=cts-sybase-pool
sybase.dataSource= com.sybase.jdbc2.jdbc.SybDataSource
sybase.properties=user\=${sybase.user}:password\=${sybase.passwd}:DatabaseName\=${sybase.dbName}\:ServerName\=${sybase.server}\:PortNumber\=${sybase.port}\:BE_AS_JDBC_COMPLIANT_AS_POSSIBLE\=true\:FAKE_METADATA\=true
sybaseInet.dbName=cts2
sybaseInet.server=${orb.host}
sybaseInet.port=4100
sybaseInet.dml.file=sybase/sybase.dml.sql
sybaseInet.user=cts1
sybaseInet.passwd=cts1
sybaseInet.url=jdbc:inetsyb:${sybaseInet.server}:${sybaseInet.port}?database=${sybaseInet.dbName}
sybaseInet.driver=com.inet.syb.SybDriver
sybaseInet.classes=${jdbc.lib.class.path}/Sybelux.jar
sybaseInet.poolName=cts-sybase-Inet-pool
sybaseInet.dataSource= com.inet.syb.SybDataSource
sybaseInet.properties=user\=${sybaseInet.user}:password\=${sybaseInet.passwd}:DatabaseName\=${sybaseInet.dbName}\:ServerName\=${sybaseInet.server}\:PortNumber\=${sybaseInet.port}
sybaseDD.dbName=cts2
sybaseDD.server=${orb.host}
sybaseDD.port=4100
sybaseDD.dml.file=sybase/sybase.dml.sql
sybaseDD.user=cts1
sybaseDD.passwd=cts1
sybaseDD.url=jdbc:datadirect:sybase://${sybaseDD.server}:${sybaseDD.port}
sybaseDD.driver=com.ddtek.jdbc.sybase.SybaseDriver
sybaseDD.classes=${jdbc.lib.class.path}/util.jar${pathsep}${jdbc.lib.class.path}/sybase.jar${pathsep}${jdbc.lib.class.path}/base.jar
sybaseDD.poolName=cts-sybase-DataDirect-pool
sybaseDD.dataSource=com.ddtek.jdbcx.sybase.SybaseDataSource
sybaseDD.properties=user\=${sybaseDD.user}:password\=${sybaseDD.passwd}:ServerName\=${sybaseDD.server}:portNumber\=${sybaseDD.port}:selectMethod\=cursor:DatabaseName\=${sybaseDD.dbName}
sybaseSun.dbName=cts2
sybaseSun.server=${orb.host}
sybaseSun.port=4100
sybaseSun.dml.file=sybase/sybase.dml.sql
sybaseSun.user=cts1
sybaseSun.passwd=cts1
sybaseSun.url=jdbc:sun:sybase://${sybaseSun.server}:${sybaseSun.port}
sybaseSun.driver=com.sun.sql.jdbc.sybase.SybaseDriver
sybaseSun.classes=${jdbc.lib.class.path}/smsybase.jar
sybaseSun.poolName=cts-sybase-Sun-pool
sybaseSun.dataSource=com.sun.sql.jdbcx.sybase.SybaseDataSource
sybaseSun.properties=user\=${sybaseSun.user}:password\=${sybaseSun.passwd}:ServerName\=${sybaseSun.server}:portNumber\=${sybaseSun.port}:selectMethod\=cursor:DatabaseName\=${sybaseSun.dbName}
derby.dbName.ri=derbyDBri
derby.server.ri=${orb.host.ri}
derby.port.ri=1527
derby.dml.file.ri=derby/derby.dml.sql
derby.user.ri=cts1
derby.passwd.ri=cts1
derby.url.ri=jdbc:derby://${derby.server.ri}:${derby.port.ri}/${derby.dbName.ri};create=true
derby.driver.ri=org.apache.derby.jdbc.ClientDriver
derby.home.ri=${javaee.home.ri}/../javadb
derby.system.home.ri=${derby.home.ri}/databases
derby.classpath.ri=${ts.home}/lib/dbprocedures.jar${pathsep}${derby.home.ri}/lib/derbynet.jar${pathsep}${derby.home.ri}/lib/derbyshared.jar${pathsep}${derby.home.ri}/lib/derbytools.jar
derby.classes.ri=${derby.home.ri}/lib/derbyclient.jar{pathsep}${derby.home.ri}/lib/derbyshared.jar${pathsep}${derby.home.ri}/lib/derbytools.jar
derby.poolName.ri=cts-derby-pool
derby.dataSource.ri=org.apache.derby.jdbc.ClientDataSource
derby.properties.ri=DatabaseName\=\"${derby.dbName.ri}\":user\=${derby.user.ri}:password\=${derby.passwd.ri}:serverName\=${derby.server.ri}:portNumber=${derby.port.ri}
derby.startup.delay.ri=5
alt.dtd.dir=${ts.home}/lib/dtds
alt.schema.dir=${ts.home}/lib/schemas
create.cmp.tables=true
jdbc.poolName=${derby.poolName}
jdbc.maxpoolsize=64
jdbc.steadypoolsize=32
jdbc.poolName.ri=${derby.poolName.ri}
jdbc.maxpoolsize.ri=96
jdbc.steadypoolsize.ri=32
jdbc.db=derby
jdbc.db.classes=${derby.classes}
user1=cts1
password1=cts1
user2=cts1
password2=cts1
user3=${derby.user}
password3=${derby.passwd}
db.dml.file=${derby.dml.file}
db.dml.file.ri=${derby.dml.file}
jstl.db.driver=${derby.driver}
jstl.db.url=${derby.url}
jtaJarClasspath=${s1as.modules}/jakarta.transaction-api.jar
implementation.classes.ri=${ri.modules}/orb-connector.jar${pathsep}${ri.modules}/deployment-client.jar${pathsep}${ri.modules}/security-ee.jar${pathsep}${ri.modules}/security.jar${pathsep}${ri.modules}/common-util.jar${pathsep}${ri.modules}/glassfish-corba-omgapi.jar${pathsep}${ri.modules}/glassfish-corba-orb.jar${pathsep}${ri.modules}/internal-api.jar${pathsep}${ri.modules}/deployment-common.jar${pathsep}${ri.modules}/gmbal.jar${pathsep}${ri.modules}/bean-validator.jar${pathsep}${ri.modules}/jersey-client.jar${pathsep}${ri.modules}/jersey-common.jar${pathsep}${ri.modules}/jersey-hk2.jar${pathsep}${ri.modules}/jersey-media-jaxb.jar${pathsep}${ri.modules}/jersey-media-sse.jar${pathsep}${ri.modules}/jersey-media-json-processing.jar${pathsep}${ri.modules}/jsonp-jaxrs.jar${pathsep}${ri.modules}/jersey-media-json-binding.jar${pathsep}${ri.modules}/jersey-server.jar${pathsep}${ri.modules}/jersey-container-servlet.jar${pathsep}${ri.modules}/jersey-container-servlet-core.jar${pathsep}${ri.modules}/guava.jar${pathsep}${ri.modules}/jakarta.el.jar${pathsep}${ri.modules}/jakarta.el-api.jar${pathsep}${ri.modules}/tyrus-websocket-core.jar${pathsep}${ri.modules}/tyrus-client.jar${pathsep}${ri.modules}/tyrus-container-grizzly-client.jar${pathsep}${ri.modules}/tyrus-core.jar${pathsep}${ri.modules}/tyrus-container-grizzly.jar${pathsep}${ri.modules}/tyrus-container-grizzly-client.jar${pathsep}${ri.modules}/glassfish-grizzly-extra-all.jar${pathsep}${ri.modules}/nucleus-grizzly-all.jar${pathsep}${ri.modules}/tyrus-server.jar${pathsep}${ri.modules}/tyrus-container-servlet.jar${pathsep}${ri.modules}/tyrus-spi.jar${pathsep}${ri.modules}/yasson.jar${pathsep}${ri.modules}/jakarta.websocket-client-api.jar${pathsep}${ri.modules}/parsson.jar${pathsep}${ri.modules}/parsson-media.jar${pathsep}${ri.modules}/angus-activation.jar${pathsep}${ri.modules}/angus-mail.jar${pathsep}${ri.modules}/expressly.jar
implementation.classes=${s1as.modules}/deployment-client.jar${pathsep}${s1as.modules}/security.jar${pathsep}${s1as.modules}/common-util.jar${pathsep}${s1as.modules}/glassfish-corba-omgapi.jar${pathsep}${s1as.modules}/deployment-common.jar${pathsep}${s1as.modules}/gmbal.jar${pathsep}${s1as.modules}/bean-validator.jar${pathsep}${s1as.modules}/jakarta.ws.rs-api.jar${pathsep}${s1as.modules}/jersey-client.jar${pathsep}${s1as.modules}/jersey-common.jar${pathsep}${s1as.modules}/jersey-hk2.jar${pathsep}${s1as.modules}/jersey-media-jaxb.jar${pathsep}${s1as.modules}/jersey-media-sse.jar${pathsep}${s1as.modules}/jersey-media-json-processing.jar${pathsep}${s1as.modules}/jsonp-jaxrs.jar${pathsep}${s1as.modules}/jersey-media-json-binding.jar${pathsep}${s1as.modules}/jersey-server.jar${pathsep}${s1as.modules}/jersey-container-servlet.jar${pathsep}${s1as.modules}/jersey-container-servlet-core.jar${pathsep}${s1as.modules}/guava.jar${pathsep}${s1as.modules}/jakarta.el.jar${pathsep}${s1as.modules}/jakarta.el-api.jar${pathsep}${s1as.modules}/tyrus-websocket-core.jar${pathsep}${s1as.modules}/tyrus-client.jar${pathsep}${s1as.modules}/tyrus-core.jar${pathsep}${s1as.modules}/tyrus-container-grizzly.jar${pathsep}${s1as.modules}/tyrus-container-grizzly-client.jar${pathsep}${s1as.modules}/glassfish-grizzly-extra-all.jar${pathsep}${s1as.modules}/nucleus-grizzly-all.jar${pathsep}${s1as.modules}/tyrus-server.jar${pathsep}${s1as.modules}/tyrus-container-servlet.jar${pathsep}${s1as.modules}/tyrus-spi.jar${pathsep}${s1as.modules}/yasson.jar${pathsep}${s1as.modules}/jakarta.websocket-client-api.jar${pathsep}${s1as.modules}/parsson.jar${pathsep}${s1as.modules}/parsson-media.jar${pathsep}${s1as.modules}/angus-activation.jar${pathsep}${s1as.modules}/angus-mail.jar${pathsep}${s1as.modules}/expressly.jar
javaee.classes.ri=${ri.modules}/jakarta.jms-api.jar${pathsep}${ri.modules}/jakarta.json.jar${pathsep}${ri.modules}/jakarta.json-api.jar${pathsep}${ri.modules}/jakarta.json.bind-api.jar${pathsep}${ri.modules}/jakarta.ejb-api.jar${pathsep}${ri.modules}/jakarta.annotation-api.jar${pathsep}${ri.modules}/jakarta.enterprise.deploy-api.jar${pathsep}${ri.modules}/jakarta.mail.jar${pathsep}${ri.modules}/jakarta.mail-api.jar${pathsep}${ri.modules}/jakarta.persistence.jar${pathsep}${ri.modules}/jakarta.persistence-api.jar${pathsep}${ri.modules}/jakarta.resource-api.jar${pathsep}${ri.modules}/jakarta.security.auth.message-api.jar${pathsep}${ri.modules}/jakarta.authentication-api.jar${pathsep}${ri.modules}/jakarta.security.jacc-api.jar${pathsep}${ri.modules}/jakarta.authorization-api.jar${pathsep}${ri.modules}/jakarta.interceptor-api.jar${pathsep}${ri.modules}/jakarta.servlet-api.jar${pathsep}${ri.modules}/jakarta.servlet.jsp-api.jar${pathsep}${ri.modules}/jakarta.transaction-api.jar${pathsep}${ri.modules}/jakarta.xml.bind-api.jar${pathsep}${ri.modules}/jaxb-osgi.jar${pathsep}${ri.modules}/jmxremote_optional-repackaged.jar${pathsep}${ri.modules}/jakarta.faces.jar${pathsep}${ri.modules}/jakarta.faces-api.jar${pathsep}${ri.modules}/jakarta.servlet.jsp.jstl.jar${pathsep}${ri.modules}/jakarta.servlet.jsp.jstl-api.jar${pathsep}${ri.modules}/webservices-osgi.jar${pathsep}${ri.modules}/webservices-api-osgi.jar${pathsep}${ri.modules}/ejb.security.jar${pathsep}${ri.modules}/glassfish-corba-csiv2-idl.jar${pathsep}${ri.modules}/weld-osgi-bundle.jar${pathsep}${implementation.classes.ri}${pathsep}${ri.modules}/javamail-connector.jar${pathsep}${ri.modules}/javamail-runtime.jar${pathsep}${ri.modules}/jakarta.websocket-api.jar${pathsep}${ri.modules}/jakarta.enterprise.concurrent-api.jar${pathsep}${ri.modules}/jakarta.enterprise.cdi-api.jar${pathsep}${ri.modules}/jakarta.security.enterprise-api.jar${pathsep}${ri.modules}/resolver.jar${pathsep}${ri.modules}/jakarta.websocket-client-api.jar${pathsep}${ri.modules}/parsson.jar${pathsep}${s1as.modules}/parsson-media.jar${pathsep}${ri.modules}/angus-activation.jar${pathsep}${s1as.modules}/angus-mail.jar${pathsep}${s1as.modules}/expressly.jar${pathsep}${ri.modules}/webservices-extra-jdk-packages.jar${pathsep}${ri.modules}/webservices-connector.jar${pathsep}${ri.modules}/webservices-extra-xmlsec.jar${pathsep}${ri.modules}/webservices.security.jar
javaee.classes=${s1as.modules}/jakarta.jms-api.jar${pathsep}${s1as.modules}/jakarta.json.jar${pathsep}${s1as.modules}/jakarta.json-api.jar${pathsep}${s1as.modules}/jakarta.json.bind-api.jar${pathsep}${s1as.modules}/jakarta.ejb-api.jar${pathsep}${s1as.modules}/jakarta.annotation-api.jar${pathsep}${s1as.modules}/jakarta.enterprise.deploy-api.jar${pathsep}${s1as.modules}/jakarta.mail.jar${pathsep}${s1as.modules}/jakarta.mail-api.jar${pathsep}${s1as.modules}/jakarta.persistence.jar${pathsep}${s1as.modules}/jakarta.persistence-api.jar${pathsep}${s1as.modules}/jakarta.resource-api.jar${pathsep}${s1as.modules}/jakarta.security.auth.message-api.jar${pathsep}${s1as.modules}/jakarta.security.jacc-api.jar${pathsep}${s1as.modules}/jakarta.authentication-api.jar${pathsep}${s1as.modules}/jakarta.authorization-api.jar${pathsep}${s1as.modules}/jakarta.servlet-api.jar${pathsep}${s1as.modules}/el-impl.jar${pathsep}${s1as.modules}/jakarta.servlet.jsp-api.jar${pathsep}${jtaJarClasspath}${pathsep}${s1as.modules}/jakarta.xml.bind-api.jar${pathsep}${s1as.modules}/jaxb-osgi.jar${pathsep}${s1as.modules}/jmxremote_optional-repackaged.jar${pathsep}${s1as.modules}/jakarta.faces.jar${pathsep}${s1as.modules}/jakarta.faces-api.jar${pathsep}${s1as.modules}/jakarta.servlet.jsp.jstl.jar${pathsep}${ri.modules}/jakarta.servlet.jsp.jstl-api.jar${pathsep}${s1as.modules}/webservices-osgi.jar${pathsep}${s1as.modules}/webservices-api-osgi.jar${pathsep}${s1as.modules}/jakarta.management.j2ee-api.jar${pathsep}${s1as.modules}/ejb.security.jar${pathsep}${s1as.modules}/glassfish-corba-csiv2-idl.jar${pathsep}${s1as.modules}/weld-osgi-bundle.jar${pathsep}${implementation.classes}${pathsep}${s1as.modules}/javamail-connector.jar${pathsep}${s1as.modules}/javamail-runtime.jar${pathsep}${s1as.modules}/jakarta.websocket-api.jar${pathsep}${s1as.modules}/jakarta.enterprise.concurrent-api.jar${pathsep}${s1as.modules}/jakarta.enterprise.cdi-api.jar$${pathsep}${s1as.modules}/jakarta.xml.ws-api.jar${pathsep}${s1as.modules}/jakarta.xml.bind-api.jar${pathsep}${s1as.modules}/jakarta.security.enterprise-api.jar${pathsep}${s1as.modules}/jakarta.inject-api.jar${pathsep}${s1as.modules}/jakarta.activation-api.jar${pathsep}${s1as.modules}/jakarta.validation-api.jar${pathsep}${s1as.modules}/resolver.jar${pathsep}${s1as.modules}/jakarta.websocket-client-api.jar${pathsep}${s1as.modules}/parsson.jar${pathsep}${s1as.modules}/parsson-media.jar${pathsep}${s1as.modules}/angus-activation.jar${pathsep}${s1as.modules}/angus-mail.jar${pathsep}${s1as.modules}/expressly.jar${pathsep}${s1as.modules}/webservices-extra-jdk-packages.jar${pathsep}${s1as.modules}/webservices-connector.jar${pathsep}${s1as.modules}/webservices-extra-xmlsec.jar${pathsep}${s1as.modules}/webservices.security.jar
ts.run.classpath.ri=${javaee.classes.ri}${pathsep}${ts.home}/lib/tsharness.jar${pathsep}${ts.home}/lib/cts.jar${pathsep}${ts.home}/lib/glassfishporting.jar
ts.run.classpath=${pathsep}${javaee.classes}${pathsep}${ts.home}/lib/tsharness.jar${pathsep}${ts.home}/lib/cts.jar${pathsep}${ts.home}/lib/glassfishporting.jar${pathsep}${jdbc.db.classes}
ts.harness.classpath=${ts.home}/lib/jaxb-api.jar${pathsep}${ts.home}/lib/jaxb-core.jar${pathsep}${ts.home}/lib/jaxb-impl.jar${pathsep}${ts.home}/lib/jaxb-xjc.jar${pathsep}${ts.home}/lib/tsharness.jar${pathsep}${ts.home}/lib/cts.jar${pathsep}${ts.home}/lib/glassfishporting.jar${pathsep}${ts.home}/lib/sigtest.jar${pathsep}${ts.run.classpath}${pathsep}${ts.home}/lib/javatest.jar${pathsep}${ts.home}/lib/jdom-1.1.3.jar${pathsep}${ant.home}/lib/ant.jar${pathsep}${ri.modules}/admin-cli.jar
ts.classpath=${ts.home}/lib/commons-lang3-3.3.2.jar${pathsep}${javaee.home.ri}/javadb/lib/derby.jar${pathsep}${ts.home}/lib/tsharness.jar${pathsep}${ts.home}/lib/cts.jar${pathsep}${ts.home}/lib/glassfishporting.jar${pathsep}${ts.home}/lib/sigtest.jar${pathsep}${ts.run.classpath}${pathsep}${ts.run.classpath.ri}${pathsep}${ts.home}/lib/javatest.jar${pathsep}${ts.home}/lib/jdom-1.1.3.jar${pathsep}${ant.home}/lib/ant.jar${pathsep}${ts.home}/lib/commons-httpclient-3.1.jar${pathsep}${ts.home}/lib/commons-logging-1.1.3.jar${pathsep}${ts.home}/lib/htmlunit-2.15.jar${pathsep}${ts.home}/lib/htmlunit-core-js-2.15.jar${pathsep}${ts.home}/lib/unboundid-ldapsdk.jar${pathsep}${ts.home}/lib/commons-codec-1.9.jar${pathsep}${ts.home}/lib/xml-apis-1.4.01.jar${pathsep}${ts.home}/lib/jaxb-api.jar
ts.lib.classpath=${javaee.home.ri}/javadb/lib/derby.jar${pathsep}${ts.harness.classpath}
javaee.home.ri.classpathsuffix=${javaee.home.ri}/lib/riinterceptors.jar${pathsep}${javaee.home.ri}/javadb/lib/derbyclient.jar
s1as.classpathsuffix=${javaee.home}/lib/tsprovider.jar
command.testExecute=com.sun.ts.lib.harness.ExecTSTestCmd \
        CLASSPATH=${ts.harness.classpath}${pathsep}${ts.home}/classes${pathsep}\
        ${JAVA_HOME}/../lib/tools.jar${pathsep}\
        ${ri.modules}/security-ee.jar${pathsep}\
        ${ts.home}/lib/commons-httpclient-3.1.jar${pathsep}\
        ${ts.home}/lib/commons-logging-1.1.3.jar${pathsep}\
        ${ts.home}/lib/commons-codec-1.9.jar${pathsep}\
        ${ts.home}/lib/cssparser-0.9.25.jar${pathsep}\
        ${ts.home}/lib/htmlunit-2.15.jar${pathsep}\
        ${ts.home}/lib/htmlunit-core-js-2.15.jar${pathsep}\
        ${ts.home}/lib/httpcore-4.4.9.jar${pathsep}\
        ${ts.home}/lib/httpclient-4.5.5.jar${pathsep}\
        ${ts.home}/lib/httpmime-4.5.5.jar${pathsep}\
        ${ts.home}/lib/commons-collections-3.2.1.jar${pathsep}\
        ${ts.home}/lib/commons-io-2.4.jar${pathsep}\
        ${ts.home}/lib/commons-lang3-3.3.2.jar${pathsep}\
        ${ts.home}/lib/jaxen-1.1.6.jar${pathsep}\
        ${ts.home}/lib/nekohtml-1.9.21.jar${pathsep}\
        ${ts.home}/lib/sac-1.3.jar${pathsep}\
        ${ts.home}/lib/saxpath.jar${pathsep}\
        ${ts.home}/lib/xercesImpl-2.11.0.jar${pathsep}\
        ${ts.home}/lib/xalan-2.7.2.jar${pathsep}\
        ${ts.home}/lib/serializer-2.7.2.jar${pathsep}\
        ${ts.home}/lib/xml-apis-1.4.01.jar${pathsep}\
	${ts.home}/lib/unboundid-ldapsdk.jar${pathsep}\
        ${jdbc.db.classes} \
        DISPLAY=${ts.display} \
        HOME="${user.home}" \
        TMP=${TMP} \
        windir=${windir} \
        SYSTEMROOT=${SYSTEMROOT} \
        PATH="${javaee.home}/nativelib" \
        ${JAVA_HOME}/bin/java \
        ${JVMOPTS_RUNTESTCOMMAND} \
        -Xss2048k \
        -Dcts.tmp=$harness.temp.directory \
        -Djava.protocol.handler.pkgs=javax.net.ssl \
        -Djavax.net.ssl.keyStore=${bin.dir}/certificates/clientcert.jks \
        -Djavax.net.ssl.keyStorePassword=changeit \
        -Djavax.net.ssl.trustStore=${s1as.domain}/${sjsas.instance.config.dir}/cacerts.jks \
        -Dcom.sun.aas.installRoot=${javaee.home} \
        -Dlog.file.location=${log.file.location} \
        -Dservlet.is.jsr115.compatible=${servlet.is.jsr115.compatible} \
        -Dprovider.configuration.file=${provider.configuration.file} \
        -Djava.security.properties=${s1as.domain}/${sjsas.instance.config.dir}/ts.java.security \
        -Dlogical.hostname.servlet=${logical.hostname.servlet} \
        -Dcom.sun.aas.configRoot=${javaee.home}/config \
        -Ddeliverable.class=${deliverable.class} $testExecuteClass $testExecuteArgs
command.testExecuteAppClient= \
        com.sun.ts.lib.harness.ExecTSTestCmd DISPLAY=${ts.display} HOME="${user.home}" \
        LD_LIBRARY_PATH=${javaee.home}/lib \
        TMP=${TMP} \
        windir=${windir} \
        SYSTEMROOT=${SYSTEMROOT} \
        PATH="${javaee.home}/nativelib" \
        APPCPATH=${ts.home}/lib/tsharness.jar${pathsep}${ts.home}/lib/cts.jar${pathsep}${ts.home}/lib/glassfishporting.jar${pathsep}${javaee.home}/lib/jpa_alternate_provider.jar${pathsep}${ts.home}/lib/tssv.jar${pathsep}${javaee.home}/modules/weld-osgi-bundle.jar${pathsep}${javaee.home}/modules/jakarta.enterprise.cdi-api.jar \
        TZ=${tz} \
        ${JAVA_HOME}/bin/java \
        ${JVMOPTS_RUNTESTCOMMAND} \
        -Djava.system.class.loader=org.glassfish.appclient.client.acc.agent.ACCAgentClassLoader  \
        -Djava.security.policy=${javaee.home}/lib/appclient/client.policy \
        -Dcts.tmp=$harness.temp.directory \
        -Djava.security.auth.login.config=${javaee.home}/lib/appclient/appclientlogin.conf \
        -Djava.protocol.handler.pkgs=javax.net.ssl \
        -Dcom.sun.enterprise.home=${javaee.home} \
        -Djavax.net.ssl.keyStore=${bin.dir}/certificates/clientcert.jks \
        -Djavax.net.ssl.keyStorePassword=changeit \
        -Dcom.sun.aas.installRoot=${javaee.home} \
        -Dcom.sun.aas.imqLib=${javaee.home}/../mq/lib \
        -Djavax.net.ssl.trustStore=${s1as.domain}/${sjsas.instance.config.dir}/cacerts.jks \
        -Djavax.xml.parsers.SAXParserFactory=com.sun.org.apache.xerces.internal.jaxp.SAXParserFactoryImpl \
        -Djavax.xml.parsers.DocumentBuilderFactory=com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl \
        -Djavax.xml.transform.TransformerFactory=com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl \
        -Dorg.xml.sax.driver=com.sun.org.apache.xerces.internal.parsers.SAXParser \
        -Dorg.xml.sax.parser=org.xml.sax.helpers.XMLReaderAdapter \
        -Doracle.jdbc.J2EE13Compliant=true \
        -Doracle.jdbc.mapDateToTimestamp \
        -Dstartup.login=false \
        -Dauth.gui=false \
        -Dlog.file.location=${log.file.location} \
        -Dri.log.file.location=${ri.log.file.location} \
        -DwebServerHost.2=${webServerHost.2} \
        -DwebServerPort.2=${webServerPort.2} \
        -Dprovider.configuration.file=${provider.configuration.file} \
        -Djava.security.properties=${s1as.domain}/${sjsas.instance.config.dir}/ts.java.security \
        -Dcom.sun.aas.configRoot=${javaee.home}/config \
        -Ddeliverable.class=${deliverable.class} -javaagent:${javaee.home}/lib/gf-client.jar=arg=-configxml,arg=${ts.home}/tmp/appclient/s1as.sun-acc.xml,client=jar=$testExecuteArgs
command.testExecuteEjbEmbed=com.sun.ts.lib.harness.ExecTSTestCmd \
        CLASSPATH=${ts.home}/lib/tsharness.jar${pathsep}\
        ${ts.home}/lib/cts.jar${pathsep}\
	${ts.home}/lib/glassfishporting.jar${pathsep}\
        ${ts.home}/lib/commons-lang3-3.3.2.jar${pathsep}\
        ${jdbc.db.classes}${pathsep}\
        ${javaee.home}/lib/embedded/glassfish-embedded-static-shell.jar \
        DISPLAY=${ts.display} \
        HOME="${user.home}" \
        TMP=${TMP} \
        windir=${windir} \
        SYSTEMROOT=${SYSTEMROOT} \
        ${JAVA_HOME}/bin/java \
        ${JVMOPTS_RUNTESTCOMMAND} \
        -Dcts.tmp=$harness.temp.directory \
        -Djava.util.logging.config.file=${TS_HOME}/bin/client-logging.properties \
        -Dtest.ejb.stateful.timeout.wait.seconds=${test.ejb.stateful.timeout.wait.seconds} \
        -Ddeliverable.class=${deliverable.class} $testExecuteClass $testExecuteArgs
command.testExecuteAppClient2= \
        com.sun.ts.lib.harness.ExecTSTestCmd DISPLAY=${ts.display} HOME="${user.home}" \
	LD_LIBRARY_PATH=${javaee.home.ri}/lib \
        TMP=${TMP} \
        windir=${windir} \
        SYSTEMROOT=${SYSTEMROOT} \
        PATH="${javaee.home.ri}/nativelib" \
        APPCPATH=${ts.home}/lib/tsharness.jar${pathsep}${ts.home}/lib/cts.jar${pathsep}${ts.home}/lib/glassfishporting.jar${pathsep}${ts.home}/lib/riinterceptors.jar \
	TZ=${tz} \
        ${RI_JAVA_HOME}/bin/java \
        ${JVMOPTS_RUNTESTCOMMAND} \
        -Djava.system.class.loader=org.glassfish.appclient.client.acc.agent.ACCAgentClassLoader \
        -Djava.security.policy=${javaee.home.ri}/lib/appclient/client.policy \
        -Dcts.tmp=$harness.temp.directory \
	-Djava.security.auth.login.config=${javaee.home.ri}/lib/appclient/appclientlogin.conf \
        -Djava.protocol.handler.pkgs=javax.net.ssl \
	-Dcom.sun.enterprise.home=${javaee.home.ri} \
        -Djavax.net.ssl.keyStore=${bin.dir}/certificates/clientcert.jks \
        -Djavax.net.ssl.keyStorePassword=changeit \
        -Dcom.sun.aas.installRoot=${javaee.home.ri} \
	-Dcom.sun.aas.imqLib=${javaee.home.ri}/../mq/lib \
        -Djavax.net.ssl.trustStore=${ri.domain}/config/cacerts.jks \
        -Djavax.xml.parsers.SAXParserFactory=com.sun.org.apache.xerces.internal.jaxp.SAXParserFactoryImpl \
        -Djavax.xml.parsers.DocumentBuilderFactory=com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl \
        -Djavax.xml.transform.TransformerFactory=com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl \
        -Dorg.xml.sax.driver=com.sun.org.apache.xerces.internal.parsers.SAXParser \
        -Dorg.xml.sax.parser=org.xml.sax.helpers.XMLReaderAdapter \
        -Doracle.jdbc.J2EE13Compliant=true \
        -Doracle.jdbc.mapDateToTimestamp \
        -Dstartup.login=false \
        -Dauth.gui=false \
        -Dlog.file.location=${log.file.location} \
        -Dri.log.file.location=${ri.log.file.location} \
        -DwebServerHost.2=${webServerHost.2} \
        -DwebServerPort.2=${webServerPort.2} \
        -Dprovider.configuration.file=${provider.configuration.file} \
        -Djava.security.properties=${s1as.domain}/${sjsas.instance.config.dir}/ts.java.security \
        -Dcom.sun.aas.configRoot=${javaee.home.ri}/config \
        -Ddeliverable.class=${deliverable.class} -javaagent:${javaee.home.ri}/lib/gf-client.jar=arg=-configxml,arg=${ts.home}/tmp/appclient/ri.sun-acc.xml,client=jar=$testExecuteArgs
command.testExecute2=com.sun.ts.lib.harness.ExecTSTestCmd \
        CLASSPATH=${ts.harness.classpath}${pathsep}${ts.home}/classes${pathsep}\
        ${ts.home}/lib/commons-httpclient-3.1.jar${pathsep}\
        ${ts.home}/lib/commons-logging-1.1.3.jar${pathsep}\
        ${ts.home}/lib/commons-codec-1.9.jar${pathsep}\
        ${ts.home}/lib/cssparser-0.9.25.jar${pathsep}\
        ${ts.home}/lib/htmlunit-2.15.jar${pathsep}\
        ${ts.home}/lib/htmlunit-core-js-2.15.jar${pathsep}\
        ${ts.home}/lib/httpcore-4.4.9.jar${pathsep}\
        ${ts.home}/lib/httpclient-4.5.5.jar${pathsep}\
        ${ts.home}/lib/httpmime-4.5.5.jar${pathsep}\
        ${ts.home}/lib/commons-collections-3.2.1.jar${pathsep}\
        ${ts.home}/lib/commons-io-2.4.jar${pathsep}\
        ${ts.home}/lib/commons-lang3-3.3.2.jar${pathsep}\
        ${ts.home}/lib/jaxen-1.1.6.jar${pathsep}\
        ${ts.home}/lib/nekohtml-1.9.21.jar${pathsep}\
        ${ts.home}/lib/sac-1.3.jar${pathsep}\
        ${ts.home}/lib/saxpath.jar${pathsep}\
        ${ts.home}/lib/xercesImpl-2.11.0.jar${pathsep}\
        ${ts.home}/lib/xalan-2.7.2.jar${pathsep}\
        ${ts.home}/lib/serializer-2.7.2.jar${pathsep}\
        ${ts.home}/lib/xml-apis-1.4.01.jar \
	${ts.home}/lib/unboundid-ldapsdk.jar\
        DISPLAY=${ts.display} \
        HOME="${user.home}" \
        TMP=${TMP} \
        windir=${windir} \
        SYSTEMROOT=${SYSTEMROOT} \
        PATH="${javaee.home}/nativelib" \
        ${RI_JAVA_HOME}/bin/java \
        ${JVMOPTS_RUNTESTCOMMAND} \
        -Dcts.tmp=$harness.temp.directory \
        -Djava.protocol.handler.pkgs=javax.net.ssl \
        -Djavax.net.ssl.keyStore=${bin.dir}/certificates/clientcert.jks \
        -Djavax.net.ssl.keyStorePassword=changeit \
        -Djavax.net.ssl.trustStore=${ri.domain}/${ri.instance.config.dir}/cacerts.jks \
        -Ddeliverable.class=${deliverable.class} $testExecuteClass $testExecuteArgs
env.ts_unix.menu=true
env.ts_win32.menu=true
jimage.dir=${ts.home}/tmp/jdk-bundles
sigTestClasspath=${s1as.modules}/glassfish-corba-omgapi.jar${pathsep}${s1as.modules}/glassfish-corba-orb.jar${pathsep}${s1as.modules}/jakarta.enterprise.cdi-api.jar${pathsep}${s1as.modules}/jakarta.json-api.jar${pathsep}${s1as.modules}/jakarta.json.bind-api.jar${pathsep}${s1as.modules}/jakarta.batch-api.jar${pathsep}${s1as.modules}/jakarta.interceptor-api.jar${pathsep}${s1as.modules}/stax2-api.jar${pathsep}${s1as.modules}/jakarta.enterprise.concurrent-api.jar${pathsep}${s1as.modules}/jakarta.websocket-api.jar${pathsep}${s1as.modules}/jakarta.websocket-client-api.jar${pathsep}${s1as.modules}/jakarta.jms-api.jar${pathsep}${s1as.modules}/jakarta.faces.jar${pathsep}${s1as.modules}/jakarta.validation-api.jar${pathsep}${s1as.modules}/jakarta.annotation-api.jar${pathsep}${s1as.modules}/jakarta.xml.bind-api.jar${pathsep}${s1as.modules}/webservices-api-osgi.jar${pathsep}${pathsep}${s1as.modules}/jakarta.ws.rs-api.jar${pathsep}${s1as.modules}/weld-osgi-bundle.jar${pathsep}${s1as.modules}/jakarta.ejb-api.jar${pathsep}${s1as.modules}/jakarta.mail-api.jar${pathsep}${s1as.modules}/jakarta.persistence-api.jar${pathsep}${s1as.modules}/jakarta.resource-api.jar${pathsep}${s1as.modules}/jakarta.authorization-api.jar${pathsep}${s1as.modules}/jakarta.authentication-api.jar${pathsep}${s1as.modules}/jakarta.servlet-api.jar${pathsep}${s1as.modules}/jakarta.inject-api.jar${pathsep}${s1as.modules}/jakarta.el-api.jar${pathsep}${s1as.modules}/jakarta.servlet.jsp-api.jar${pathsep}${s1as.modules}/jakarta.servlet.jsp.jstl-api.jar${pathsep}${jtaJarClasspath}${pathsep}${s1as.modules}/jakarta.security.enterprise-api.jar${pathsep}${s1as.modules}/jakarta.activation-api.jar${pathsep}${jimage.dir}/java.base${pathsep}${jimage.dir}/java.rmi${pathsep}${jimage.dir}/java.sql${pathsep}${jimage.dir}/java.naming
optional.tech.packages.to.ignore=jakarta.xml.bind
harness.temp.directory=${ts.home}/tmp
harness.log.port=2000
harness.log.traceflag=false
harness.executeMode=0
harness.socket.retry.count=10
harness.log.delayseconds=1
harness.maxoutputsize=200000
wsdlRepository1=${harness.temp.directory}/wsdlRepository1
wsdlRepository2=${harness.temp.directory}/wsdlRepository2
deployment_host.1=${orb.host}
deployment_host.2=${orb.host.ri}
deployment_port.1=${impl.vi.port}
deployment_port.2=${impl.ri.port}
impl.vi=glassfish
impl.vi.deploy.dir=${s1as.domain}/autodeploy
impl.vi.host=${s1as.admin.host}
impl.vi.port=${s1as.admin.port}
impl.ri=glassfish
impl.ri.deploy.dir=${ri.domain}/autodeploy
impl.ri.host=${ri.admin.host}
impl.ri.port=${ri.admin.port}
impl.deploy.timeout.multiplier=240
porting.ts.deploy.class.1=com.sun.ts.lib.implementation.sun.javaee.glassfish.AutoDeployment
porting.ts.deploy.class.2=com.sun.ts.lib.implementation.sun.javaee.glassfish.AutoDeploymentSeparateVM
porting.ts.login.class.1=com.sun.ts.lib.implementation.sun.javaee.GlassFishLoginContext
porting.ts.url.class.1=com.sun.ts.lib.porting.implementation.SunRIURL
porting.ts.jms.class.1=com.sun.ts.lib.implementation.sun.javaee.SunRIJMSAdmin
porting.ts.HttpsURLConnection.class.1=com.sun.ts.lib.implementation.sun.javaee.SunRIHttpsURLConnection
porting.ts.login.class.2=com.sun.ts.lib.implementation.sun.javaee.GlassFishLoginContext
porting.ts.url.class.2=com.sun.ts.lib.implementation.sun.common.SunRIURL
porting.ts.jms.class.2=com.sun.ts.lib.implementation.sun.javaee.SunRIJMSAdmin
porting.ts.HttpsURLConnection.class.2=com.sun.ts.lib.implementation.sun.javaee.SunRIHttpsURLConnection
namingServiceHost1=${orb.host}
namingServicePort1=${orb.port}
namingServiceHost2=${orb.host.ri}
namingServicePort2=${orb.port.ri}
certLoginUserAlias=cts
webServerHost=${orb.host}
webServerPort=8080
webServerHost.2=${orb.host.ri}
webServerPort.2=8002
ServletClientThreads=2
EJBServer1TxInteropEnabled=true
EJBServer2TxInteropEnabled=true
whitebox-tx=java:comp/env/eis/whitebox-tx
whitebox-notx=java:comp/env/eis/whitebox-notx
whitebox-xa=java:comp/env/eis/whitebox-xa
whitebox-tx-param=java:comp/env/eis/whitebox-tx-param
whitebox-notx-param=java:comp/env/eis/whitebox-notx-param
whitebox-xa-param=java:comp/env/eis/whitebox-xa-param
whitebox-anno_no_md=java:comp/env/eis/whitebox-anno_no_md
whitebox-ibanno_no_md=java:comp/env/eis/whitebox-ibanno_no_md
whitebox-mixedmode=java:comp/env/eis/whitebox-mixedmode
whitebox-multianno=java:comp/env/eis/whitebox-multianno
whitebox-mdcomplete=java:comp/env/eis/whitebox-mdcomplete
whitebox-permissiondd=java:comp/env/eis/whitebox-permissiondd
whitebox-embed=java:comp/env/eis/ejb_Deployment_whitebox-tx.rar
whitebox-embed-xa="__SYSTEM/resource/ejb_Tsr#whitebox-xa#com.sun.ts.tests.common.connector.whitebox.TSConnectionFactory"
tsrJndiName=java:comp/TransactionSynchronizationRegistry
tsrHomeJndiName="java:global/ejb_Tsr/ejb_Tsr_ejb/Tsr"
JDBCwhitebox-tx=java:comp/env/eis/JDBCwhitebox-tx
JDBCwhitebox-notx=java:comp/env/eis/JDBCwhitebox-notx
JDBCwhitebox-xa=java:comp/env/eis/JDBCwhitebox-xa
JDBCwhitebox-tx-param=java:comp/env/eis/JDBCwhitebox-tx-param
JDBCwhitebox-notx-param=java:comp/env/eis/JDBCwhitebox-notx-param
JDBCwhitebox-xa-param=java:comp/env/eis/JDBCwhitebox-xa-param
xa.properties="user\\\=${derbyEmbedded.user}\\\:password\\\=${derbyEmbedded.passwd}\\\:DatabaseName\\\=${derbyEmbedded.dbName}"
xa.xadatasource.class=org.apache.derby.jdbc.EmbeddedXADataSource
connector_connectionURL="jdbc\\:derby\\:${derbyEmbedded.dbName}\\;create\\=true"
user=j2ee
password=j2ee
authuser=javajoe
authpassword=javajoe
user_vi=j2ee_vi
password_vi=j2ee_vi
user_ri=j2ee_ri
password_ri=j2ee_ri
nobodyuser=guest
securedWebServicePort=1044
securedWebServicePort.2=1045
client.cert.test.jdk.tls.client.protocols=TLSv1.2
login=default
jms_timeout=10000
ejb_timeout=30000
ejb_wait=60000
test.ejb.stateful.timeout.wait.seconds=480
log.file.location=${vi.log.file.location}
dirsep=/
build.level=3
deliverable.class=com.sun.ts.lib.deliverable.cts.CTSDeliverable
create.manifest.extension.entries=true
tslib.name=cts
rauser1=cts1
rapassword1=cts1
rauser2=cts2
rapassword2=cts2
jstl.db.user=${user1}
jstl.db.password=${password1}
command.testExecuteSameJVM=com.sun.ts.lib.harness.ExecuteTSTestSameJVMCmd \
        $testExecuteClass $testExecuteArgs
DriverManager=no
Driver=DriverOnlyUsedIfDriverManagerIsYes
db1=db1OnlyUsedIfDriverManagerIsYes
db2=db1OnlyUsedIfDriverManagerIsYes
ptable=ctstable1
ftable=ctstable2
cofSize=5
cofTypeSize=5
binarySize=24
varbinarySize=48
longvarbinarySize=50
ts_home=${ts.home}
platform.mode=jakartaEE
tools.jar=/home/jenkins/agent/workspace/jakartaee-tck_10.0.x/modules/webservices-tools.jar:/home/jenkins/agent/workspace/jakartaee-tck_10.0.x/modules/webservices-api.jar
wsgen.ant.classname=
wsgen.classpath=${javaee.classes}${pathsep}${tools.jar}
wsgen.verbose=true
wsgen.debug=false
wsimport.ant.classname=
wsimport.classpath=${javaee.classes}${pathsep}${tools.jar}
wsimport.verbose=true
wsimport.debug=false
wsimport.jvmargs=
ri.wsgen.ant.classname=com.sun.tools.ws.ant.WsGen
ri.wsgen.classpath=${javaee.classes.ri}${pathsep}${tools.jar}
ri.wsgen.verbose=true
ri.wsgen.debug=false
ri.wsimport.ant.classname=com.sun.tools.ws.ant.WsImport
ri.wsimport.classpath=${javaee.classes.ri}${pathsep}${tools.jar}
ri.wsimport.verbose=true
ri.wsimport.debug=false
ri.wsimport.jvmargs=
ts.dao.root=com/sun/ts/tests/common/dao
ts.dao.classes.base=\
    ${ts.dao.root}/InvalidDAOSettingException.class, \
    ${ts.dao.root}/DAOException.class, \
    ${ts.dao.root}/DAO.class, \
    ${ts.dao.root}/DataSourceDAO*.class, \
    ${ts.dao.root}/DAOFactory.class, \
    ${ts.dao.root}/TSDAOFactory*.class, \
    ${ts.dao.root}/coffee/CoffeeBean.class, \
    ${ts.dao.root}/coffee/CoffeeDAO.class, \
    ${ts.dao.root}/coffee/TxCoffeeDAO.class, \
    ${ts.dao.root}/coffee/variants/StringPKCoffeeDAO.class, \
    ${ts.dao.root}/coffee/variants/LongPKCoffeeDAO.class, \
    ${ts.dao.root}/coffee/variants/FloatPKCoffeeDAO.class, \
    ${ts.dao.root}/coffee/variants/CompoundPK.class, \
    ${ts.dao.root}/coffee/variants/CompoundPKCoffeeDAO.class
ts.dao.classes.impl=\
    ${ts.dao.root}/coffee/DataSourceCoffeeDAO.class, \
    ${ts.dao.root}/coffee/variants/StringPKDSCoffeeDAO.class, \
    ${ts.dao.root}/coffee/variants/LongPKDSCoffeeDAO.class, \
    ${ts.dao.root}/coffee/variants/FloatPKDSCoffeeDAO.class, \
    ${ts.dao.root}/coffee/variants/CompoundPKDSCoffeeDAO.class
ts.dao.classes.coffee.standard=\
    ${ts.dao.classes.base}, \
    ${ts.dao.classes.impl}
ts.dao.classes.coffee.txaware=\
    ${ts.dao.classes.base}, \
    ${ts.dao.classes.impl}
ts.dao.classes.coffee.variants=\
    ${ts.dao.classes.base}, \
    ${ts.dao.classes.impl}
ts.wrappers.ejb.root=com/sun/ts/tests/common/ejb/wrappers
ts.wrappers.web.root=com/sun/ts/tests/common/web
ts.wrappers.classes.stateless.ejb=\
    ${ts.wrappers.ejb.root}/StatelessWrapper.class
ts.wrappers.classes.stateful.ejb=\
    ${ts.wrappers.ejb.root}/StatefulWrapper.class
ts.wrappers.classes.bmp.ejb=\
    ${ts.dao.classes.coffee.standard}, \
    ${ts.wrappers.ejb.root}/BMPWrapper.class
ts.wrappers.classes.cmp11.ejb=${ts.wrappers.ejb.root}/CMP11Wrapper.class
ts.wrappers.classes.cmp20.ejb=${ts.wrappers.ejb.root}/CMP20Wrapper.class
ts.wrappers.classes.mdb.ejb=\
    com/sun/ts/tests/jms/common/JmsUtil.class, \
    com/sun/ts/tests/jms/commonee/ParentMsgBean.class, \
    ${ts.wrappers.ejb.root}/MDBWrapper.class
ts.wrappers.classes.mdb.client=com/sun/ts/tests/jms/commonee/Client.class
ts.wrappers.classes.all.ejb=\
    ${ts.wrappers.classes.stateless.ejb}, \
    ${ts.wrappers.classes.stateful.ejb}, \
    ${ts.wrappers.classes.bmp.ejb}, \
    ${ts.wrappers.classes.cmp11.ejb}, \
    ${ts.wrappers.classes.cmp20.ejb}, \
    ${ts.wrappers.classes.mdb.ejb}
ts.wrappers.classes.web.client=\
    ${ts.wrappers.web.root}/WebServer.class
ts.wrappers.classes.web.server=\
    ${ts.wrappers.web.root}/WebUtil.class, \
    ${ts.wrappers.web.root}/JSPBeanWrapper.class, \
    ${ts.wrappers.web.root}/ServletWrapper.class
ts.wrappers.classes.servlet.client=${ts.wrappers.classes.web.client}
ts.wrappers.classes.servlet.server=\
    ${ts.wrappers.web.root}/WebUtil.class, \
    ${ts.wrappers.web.root}/ServletWrapper.class
ts.wrappers.classes.jsp.client=${ts.wrappers.classes.web.client}
ts.wrappers.classes.jsp.server=\
    ${ts.wrappers.web.root}/WebUtil.class, \
    ${ts.wrappers.web.root}/JSPBeanWrapper.class
ts.standard.deployment.server.classpath=${ant.jars}:${pathsep}${ts.run.classpath.ri}${pathsep}${ts.home}/lib/javatest.jar${pathsep}${ts.home}/lib/jdom-1.1.3.jar${pathsep}${ri.modules}/admin-cli.jar
harness.deployment.server.port=2002
java.naming.factory.initial=foo
org.omg.CORBA.ORBClass=foo
undeploy_redeploy_apps=${UNDEPLOY_REDEPLOY_FLAG}
j2ee.home=${javaee.home}
j2ee.home.ri=${javaee.home.ri}
secured.ejb.vehicle.client=true
variable.mapper=org.glassfish.expressly.lang.VariableMapperImpl
port.range.min=1025
port.range.max=10000
http.server.supports.endpoint.publish=false
http.server.supports.endpoint.publish.2=false
client.delay=1
persistence.unit.name=CTS-EM
db.supports.sequence=true
persistence.second.level.caching.supported=true
servlet_adaptor=org/glassfish/jersey/servlet/ServletContainer.class
jaxrs_impl_lib=${javaee.home}/modules/jakarta.ws.rs-api.jar
jaxrs_impl_name=jersey
servlet.is.jsr115.compatible=true
soap.is.jsr115.compatible=false
provider.configuration.file=${javaee.home}/domains/domain1/config/ProviderConfiguration.xml
schema.file.location=${javaee.home}/lib/schemas
logical.hostname.servlet=server
logical.hostname.soap=localhost
appclient.log.output=true
vendor.authconfig.factory=com.sun.enterprise.security.jmac.config.GFAuthConfigFactory
servlet_waittime=10
servlet_async_wait=4
test.sa.jmsra=false
jmsra.rarfile=
jmsra.jarfile=
jmsra.name=jmsra
ws_wait=5
mailHost=
mailuser1=
mailFrom=
javamail.password=
smtp.port=25
imap.port=143
javamail.username=${mailuser1}
transport_protocol=smtp
javamail.server=${mailHost}
javamail.protocol=imap
javamail.transport.server=$javamail.server
javamail.root.path=""
javamail.mailbox=test1
javamail.listpattern=test
smtp.username=$javamail.username
smtp.domain=$javamail.server
smtp.from=$smtp.username
smtp.to=$smtp.username
iofile=MailIOFile.txt
ldap.server=unboundid
ldap.install.server=true
ldap.ldif.file=${ts.home}/bin/ldap.ldif
unboundid.installation.package=${ts.home}/lib/unboundid-ldapsdk.jar
persistencs.properties.file=${bin.dir}/jpa-provider.properties
persistence.unit.name.2=JPATCK2
jpa.provider.implementation.specific.properties=eclipselink.logging.level\=OFF
jakarta.persistence.provider=org.eclipse.persistence.jpa.PersistenceProvider
jakarta.persistence.jdbc.driver=${derby.driver}
jakarta.persistence.jdbc.url=${derby.url}
jakarta.persistence.jdbc.user=${derby.user}
jakarta.persistence.jdbc.password=${derby.passwd}
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
