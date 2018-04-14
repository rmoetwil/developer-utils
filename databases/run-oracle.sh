#!/bin/bash

if [[ -z $1 ]]; then
    echo "Use run-oracle.sh <database-volume>"
    exit 1
fi

DATABASE_VOLUME=$1

docker stop oracle-local-db
docker rm oracle-local-db

docker run -d -p 8080:8080 -p 1521:1521 -e DEFAULT_SYS_PASS=root -v $DATABASE_VOLUME:/u01/app/oracle --name oracle-local-db sath89/oracle-xe-11g

docker ps

