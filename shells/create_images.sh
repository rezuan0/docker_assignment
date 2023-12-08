#!/bin/bash

docker build --no-cache -t rezuan0/main-app:v3 .
# shellcheck disable=SC2164
cd post_app
docker build --no-cache -t rezuan0/app1:v3 .
# shellcheck disable=SC2164
cd ../music_app
docker build --no-cache -t rezuan0/app2:v3 .
# shellcheck disable=SC2164
cd ../document_app
docker build --no-cache -t rezuan0/app3:v3 .


