--liquibase formatted sql

--changeset liquibase:2
--Database: testdb1
CREATE TABLE table_12 (test_id INT, test_column VARCHAR, PRIMARY KEY (test_id))
