--liquibase formatted sql

--changeset liquibase:2
--Database: rdsadmin
CREATE TABLE gvr1 (test_id INT, test_column VARCHAR, PRIMARY KEY (test_id))
