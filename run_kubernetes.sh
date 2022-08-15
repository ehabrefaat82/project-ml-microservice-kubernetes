#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ehabrefaat82/project-ml-microservice-kubernetes

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run module04 --image=$dockerpath --port=80 --labels app=module04

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward module04 8000:80
