#!/bin/bash

if [[ -z $1 ]]; then
    echo "[ERROR] Use run-docker-registry.sh <registry-volume>"
    exit 1
fi

REGISTRY_VOLUME=$1

docker stop registry
docker rm registry

echo Running local docker registry with volume mount to $REGISTRY_VOLUME

docker run -d -p 5000:5000 --restart=always --name registry -e REGISTRY_PROXY_REMOTEURL=https://registry-1.docker.io -v $REGISTRY_VOLUME:/var/lib/registry registry

docker ps



