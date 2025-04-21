#!/bin/bash

# Define the Stack name for Swarm
STACK_NAME="mern-stack"

# Cleanup old stack (if exists)
docker stack rm $STACK_NAME
sleep 5  # Wait for the stack removal to complete

# Deploy the stack in Docker Swarm
docker stack deploy -c docker-compose.yml $STACK_NAME

# Wait for the services to start
echo "Deploying stack..."
sleep 10

# Check the status of the services
docker stack ps $STACK_NAME