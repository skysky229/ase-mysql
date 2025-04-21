#!/bin/bash
echo "Initializing Group Replication..."

# mysql -uroot -p123456 <<EOF
# -- Create replication user
# SET SQL_LOG_BIN=0;

# CREATE USER IF NOT EXISTS 'repl'@'%' IDENTIFIED WITH mysql_native_password BY '123456';
# GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';
# FLUSH PRIVILEGES;

# SET SQL_LOG_BIN=1;

# CHANGE REPLICATION SOURCE TO SOURCE_USER='repl', SOURCE_PASSWORD='123456' FOR CHANNEL 'group_replication_recovery';

# EOF
