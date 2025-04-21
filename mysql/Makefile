DOCKER_COMPOSE := docker compose -f docker-compose.yml
NETWORK_NAME := custom_network

.PHONY: all up down restart logs mysql network-clean

all: up

network:
	@if ! docker network ls --format '{{.Name}}' | grep -wq $(NETWORK_NAME); then \
		echo "Creating external network: $(NETWORK_NAME)"; \
		docker network create $(NETWORK_NAME); \
	else \
		echo "Network $(NETWORK_NAME) already exists"; \
	fi

up: 
	@make network
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

restart:
	@make down
	@make up

logs:
	$(DOCKER_COMPOSE) logs -f

mysql:
	docker exec -it mysql mysql -u root -p
	

network-clean:
	@echo "Removing external network $(NETWORK_NAME)..."
	-docker network rm $(NETWORK_NAME)

