# MySQL Master-Replica Replication with Docker
## Prerequistes
- Docker Compose 
- Port 3306, 3307 must be preserved

## How to use
On Ubuntu:
```
make all
```
On Windows/MacOS:
1. Create Docker Network
```
docker network create custom_network
```
2. Create master_data and replica_data folders
```
mkdir master_data
mkdir replica_data
```
3. Start Docker Compose
```
docker compose up -d
```
4. (Optional) To start command line:
```
docker-compose exec mysql-master mysql -uroot -p123456
```