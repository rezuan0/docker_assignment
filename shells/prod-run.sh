#!/bin/bash

sudo systemctl stop mysql.service
cp prod_env .env
mkdir Local_Logs
docker compose down

docker compose up

# shellcheck disable=SC2164
cd Local_Logs

docker compose logs -f main-app >> main.log 2>&1 &
docker compose logs -f post-app >> app1.log 2>&1 &
docker compose logs -f music-app >> app2.log 2>&1 &
docker compose logs -f document-app >> app3.log 2>&1 &
docker compose logs -f mysql >> db.log 2>&1 &


