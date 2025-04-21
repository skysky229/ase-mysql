#!/bin/bash
echo "Master initialization starting..."

until mysql -uroot -p123456 -e "SELECT 1"; do
    echo "Waiting for MySQL master to be ready..."
    sleep 5
done

mysql -uroot -p123456 <<EOF
CREATE USER 'repl_user'@'%' IDENTIFIED WITH mysql_native_password BY '123456';
GRANT REPLICATION SLAVE ON *.* TO 'repl_user'@'%';
FLUSH PRIVILEGES;
EOF

echo "Master initialization complete"