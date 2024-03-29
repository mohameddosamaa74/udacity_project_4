#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=mohameddosamaa225/udacity_microservice

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-microservice --image=mohameddosamaa225/udacity_microservice --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "sleeping for 10 seconds while waiting for pod to come up"
sleep 10
kubectl port-forward deployment/udacity-microservice 8080:80 
kubectl logs --selector app=udacity-microservice



