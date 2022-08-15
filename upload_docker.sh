#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=ehabrefaat82/project-ml-microservice-kubernetes


# Step 2:  
# Authenticate & tag
docker login --username=ehabrefaat82
docker tag module04 $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath