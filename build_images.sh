#!/bin/bash

# Build and tag all Docker images with version v4.0

# Config Server
docker build -t abdullahawad00/config-server:v4.0 \
  --build-arg ARTIFACT_NAME=spring-petclinic-config-server-3.2.7 \
  --build-arg EXPOSED_PORT=8888 \
  -f docker/Dockerfile .

# Discovery Server
docker build -t abdullahawad00/discovery-server:v4.0 \
  --build-arg ARTIFACT_NAME=spring-petclinic-discovery-server-3.2.7 \
  --build-arg EXPOSED_PORT=8761 \
  -f docker/Dockerfile .

# Customers Service
docker build -t abdullahawad00/customers-service:v4.0 \
  --build-arg ARTIFACT_NAME=spring-petclinic-customers-service-3.2.7 \
  --build-arg EXPOSED_PORT=8081 \
  -f docker/Dockerfile .

# Visits Service
docker build -t abdullahawad00/visits-service:v4.0 \
  --build-arg ARTIFACT_NAME=spring-petclinic-visits-service-3.2.7 \
  --build-arg EXPOSED_PORT=8082 \
  -f docker/Dockerfile .

# Vets Service
docker build -t abdullahawad00/vets-service:v4.0 \
  --build-arg ARTIFACT_NAME=spring-petclinic-vets-service-3.2.7 \
  --build-arg EXPOSED_PORT=8083 \
  -f docker/Dockerfile .

# Admin Server
docker build -t abdullahawad00/admin-server:v4.0 \
  --build-arg ARTIFACT_NAME=spring-petclinic-admin-server-3.2.7 \
  --build-arg EXPOSED_PORT=9090 \
  -f docker/Dockerfile .

# API Gateway
docker build -t abdullahawad00/api-gateway:v4.0 \
  --build-arg ARTIFACT_NAME=spring-petclinic-api-gateway-3.2.7 \
  --build-arg EXPOSED_PORT=8080 \
  -f docker/Dockerfile .

echo "Docker images built and tagged as v4.0"

