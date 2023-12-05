#!/bin/bash

cp local_env .env

docker compose down

docker compose up -d

