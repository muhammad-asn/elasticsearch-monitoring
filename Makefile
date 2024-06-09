NETWORK_NAME=docker-net

# Bring up the services
up: create-network
	docker compose up -d

# Bring down the services
down:
	docker compose down

# Create the external network if it doesn't exist
create-network:
	@if [ $$(docker network ls | grep -w $(NETWORK_NAME) | wc -l) -eq 0 ]; then \
		docker network create $(NETWORK_NAME); \
		echo "Network $(NETWORK_NAME) created"; \
	else \
		echo "Network $(NETWORK_NAME) already exists"; \
	fi

# Remove the external network
remove-network:
	docker network rm $(NETWORK_NAME)

# Restart the services
restart: down up

.PHONY: up down create-network remove-network restart