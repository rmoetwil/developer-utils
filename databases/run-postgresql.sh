#!/bin/bash

if [[ -z $1 ]]; then
    echo "Use run-postgres.sh <database-volume>"
    exit 1
fi

DATABASE_VOLUME=$1

docker stop postgres-local-db
docker rm postgres-local-db

docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=root -v $DATABASE_VOLUME:/var/lib/postgresql/data --name postgres-local-db postgres

docker ps

