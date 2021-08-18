#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mohameddosamaa225/udacity_microservice:v1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

export DOCKER_ID_USER="mohameddosamaa225"
docker login
docker tag udacity_microservice:v1 $DOCKER_ID_USER/udacity_microservice:v1
docker push $DOCKER_ID_USER/udacity_microservice:v1 

# Step 3:
# Push image to a docker repository
