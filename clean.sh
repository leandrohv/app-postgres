#!/bin/bash
# Stop Containers
docker-compose down
# Remove network develop
docker network rm develop
# Remove docker images project develop
docker rm $(docker ps -a -q)
# Remove docker images project develop
docker rmi $(docker images -a -q) --force
echo y | docker container prune
echo y | docker image prune

