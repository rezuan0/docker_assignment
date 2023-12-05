#!/bin/bash


sudo systemctl start mysql.service

cp local_env .env

python3 main.py &

# shellcheck disable=SC2164
cd post_app

streamlit run app1.py --server.port 7000 &


