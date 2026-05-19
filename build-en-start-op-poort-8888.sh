#!/bin/bash

# Geef de image en container een duidelijke naam
IMAGE_NAME="missing-manual-site"
CONTAINER_NAME="missing-manual-container"

echo "Huidige container stoppen en verwijderen indien deze al draait..."
docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

echo "Docker image bouwen..."
docker build -t $IMAGE_NAME .

echo "Container starten op poort 8888..."
docker run -d -p 8888:80 --name $CONTAINER_NAME $IMAGE_NAME

echo "Klaar! De site zou nu bereikbaar moeten zijn op http://localhost:8888/"
