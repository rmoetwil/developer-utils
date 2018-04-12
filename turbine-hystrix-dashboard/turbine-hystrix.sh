#!/bin/bash

docker pull schibstedspain/turbine-hystrix-dashboard

docker stop turbine-hystrix-dashboard
docker rm turbine-hystrix-dashboard

docker run -d -p 9999:8080 --restart=always --name turbine-hystrix-dashboard schibstedspain/turbine-hystrix-dashboard

docker ps
