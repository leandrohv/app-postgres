#!/bin/bash
# Create network guidoo_develop
docker network create --driver bridge develop
# Run Activation verbose mode
docker-compose --verbose up --build 
# Run Activation detached mode
#docker-compose up --build -d
