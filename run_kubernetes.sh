#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=josegalarceh/josegalarceh-app:v0.1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment app --image=josegalarceh-app:v0.1.0

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment app --type=LoadBalancer --port=8000 --target-port=80
