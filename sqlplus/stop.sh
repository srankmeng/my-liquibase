#!/bin/bash

# Oracle database credentials
username="system"
password="password"
domain="host.docker.internal:1521"
database="XEPDB1"

sql_script=$(cat <<EOF
DROP USER TMP_1 CASCADE;

DROP USER TMP_2 CASCADE;

DROP USER TMP_STD CASCADE;

EOF
)


# Connect to the Oracle database and execute the SQL script
echo "$sql_script" | sqlplus -S "$username/$password@$domain/$database"
