# Script for running various databases inside a docker container

Working with a lot of databases and you don't want to install the software on your PC or laptop.
Use Docker.

Here are several scripts for running a database inside a docker container.

The script makes use of a volume mount so your database files are externalized from the docker container.

To run:
- `./run-mysql.sh`
- `./run-oracle.sh`
- `./run-postgres.sh`


Based on the following images from Docker hub:
- https://hub.docker.com/_/mysql/
- https://hub.docker.com/r/sath89/oracle-xe-11g/
- https://hub.docker.com/_/postgres/
