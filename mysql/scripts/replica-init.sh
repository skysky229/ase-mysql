#!/bin/bash
echo "Replica initialization starting..."

until mysql -uroot -p123456 -e "SELECT 1" >/dev/null 2>&1; do
    echo "Waiting for MySQL replica to be ready..."
    sleep 5
done

mysql -uroot -p123456 <<EOF
RESET REPLICA ALL;
CHANGE REPLICATION SOURCE TO
  SOURCE_HOST='mysql-master',
  SOURCE_USER='repl_user',
  SOURCE_PASSWORD='123456',
  SOURCE_AUTO_POSITION=1,
  GET_SOURCE_PUBLIC_KEY=1;
START REPLICA;
EOF

sleep 2

SLAVE_STATUS=$(mysql -uroot -p123456 -e "SHOW SLAVE STATUS\G")

echo "Replica initialization successful"
echo "$SLAVE_STATUS"
