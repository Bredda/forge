#!/bin/sh

########################################################
## Setup base infra: Portainer + Traefik
########################################################
echo "Starting Traefik + Portainer"

chmod 600 ./compose/acme.json

output="$(docker network ls | grep forge-public)"

if [[ -n $output ]]
then
    printf "Docker network forge-public already exists"
else
    docker network create forge-public
fi

docker-compose  -f ./compose/docker-compose.root.yml up -d

echo "Infra started with success"