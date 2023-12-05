#!/bin/bash

sudo systemctl stop mysql.service
cp prod_env .env

docker compose down

docker compose up