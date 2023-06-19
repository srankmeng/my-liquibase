#!/bin/bash

# Oracle database credentials
username="system"
password="password"
domain="host.docker.internal:1521"
database="XEPDB1"

sql_script=$(cat <<EOF
CREATE USER TMP_1 IDENTIFIED BY password;
ALTER USER TMP_1 quota unlimited ON USERS;

CREATE TABLE TMP_1.APPLICATION_PARAMETER (
    CATEGORY VARCHAR(50) NOT NULL,
    NAME VARCHAR(50) NOT NULL,
    VALUE VARCHAR(50) NULL,
    VERSION INT NOT NULL,
    PRIMARY KEY (CATEGORY, NAME)
);

CREATE USER TMP_2 IDENTIFIED BY password;
ALTER USER TMP_2 quota unlimited ON USERS;

CREATE TABLE TMP_2.GUEST (
    FIRSTNAME VARCHAR(50) NOT NULL,
    SURNAME VARCHAR(50) NULL,
    AGE INT NULL,
    PRIMARY KEY (FIRSTNAME)
);

CREATE USER TMP_STD IDENTIFIED BY password;
ALTER USER TMP_STD quota unlimited ON USERS;

EOF
)


# Connect to the Oracle database and execute the SQL script
echo "$sql_script" | sqlplus -S "$username/$password@$domain/$database"
