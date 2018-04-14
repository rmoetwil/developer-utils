#!/bin/bash

if [[ -z $1 ]]; then
    echo "Use run-mysql.sh <database-volume>"
    exit 1
fi

DATABASE_VOLUME=$1

docker stop mysql-local-db
docker rm mysql-local-db

docker run --name mysql-local-db -e MYSQL_ROOT_PASSWORD=root  -v $DATABASE_VOLUME:/var/lib/mysql -p 3306:3306 -d mysql

docker ps

