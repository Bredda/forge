#!/bin/sh

########################################################
## Setup base infra: Portainer + Traefik
########################################################
echo "Starting Traefik + Portainer"

chmod 600 ./compose/support/acme.json

docker network create traefik-public

docker-compose up -d

echo "Infra started with success"