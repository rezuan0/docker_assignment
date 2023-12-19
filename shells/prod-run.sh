#!/bin/bash

sudo systemctl stop mysql.service
cp prod_env .env
mkdir Local_Logs
docker compose down

docker compose up -d

# shellcheck disable=SC2164

docker compose logs -f main-app >> Local_Logs/main.log 2>&1 &
docker compose logs -f post-app >> Local_Logs/app1.log 2>&1 &
docker compose logs -f music-app >> Local_Logs/app2.log 2>&1 &
docker compose logs -f document-app >> Local_Logs/app3.log 2>&1 &
docker compose logs -f mysql >> Local_Logs/db.log 2>&1 &


