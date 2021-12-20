-- Script Name: singledb-deployment.sh
#!/bin/bash
set -x
cd sqljdbc_9.4/enu
liquibase --driver=com.microsoft.sqlserver.jdbc.SQLServerDriver --classpath="/home/ubuntu/sqljdbc_9.4/enu/mssql-jdbc-9.4.0.jre8.jar" --url="jdbc:sqlserver://:1433;databaseName=testdb1;integratedSecurity=false;" --changeLogFile="changset.sql"  --username=testuser  --password=admin1234 update;
sudo rm -rf sqljdbc_9.4/enu/changset.sql
