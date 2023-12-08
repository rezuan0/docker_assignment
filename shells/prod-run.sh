#!/bin/bash

sudo systemctl stop mysql.service
cp prod_env .env

docker compose down

docker compose up -d


docker compose logs -f main-app >> /home/rezuan/Desktop/docker_assignment/Local_Logs/main.log 2>&1 &
docker compose logs -f post-app >> /home/rezuan/Desktop/docker_assignment/Local_Logs/app1.log 2>&1 &
docker compose logs -f music-app >> /home/rezuan/Desktop/docker_assignment/Local_Logs/app2.log 2>&1 &
docker compose logs -f document-app >> /home/rezuan/Desktop/docker_assignment/Local_Logs/app3.log 2>&1 &
docker compose logs -f mysql >> /home/rezuan/Desktop/docker_assignment/Local_Logs/db.log 2>&1 &

