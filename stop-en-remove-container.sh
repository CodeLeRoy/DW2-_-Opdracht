#!/bin/bash

CONTAINER_NAME="missing-manual-container"

echo "Container '$CONTAINER_NAME' stoppen..."
docker stop $CONTAINER_NAME

echo "Container '$CONTAINER_NAME' verwijderen..."
docker rm $CONTAINER_NAME

echo "Container is succesvol gestopt en verwijderd."
