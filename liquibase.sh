-- Script Name: singledb-deployment.sh
#!/bin/bash
set -x
cd sqljdbc_9.4/enu
liquibase --driver=com.microsoft.sqlserver.jdbc.SQLServerDriver --classpath="/home/ubuntu/sqljdbc_9.4/enu/mssql-jdbc-9.4.0.jre8.jar" --url="jdbc:sqlserver://newdatabase.c1k79dvxt7ab.us-east-2.rds.amazonaws.com:1433;databaseName=testdb1;integratedSecurity=false;" --changeLogFile="changeset.sql"  --username=admin  --password=admin1234 update  ;
sudo rm -rf sqljdbc_9.4/enu/changset.sql
