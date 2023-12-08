#!/bin/bash

sudo systemctl start mysql.service
cp local_env .env
python3 main.py &
# shellcheck disable=SC2164
cd post_app
streamlit run app1.py --server.port 7000 &

# shellcheck disable=SC2164
cd ../music_app
streamlit run app2.py --server.port 8000 &

# shellcheck disable=SC2164
cd ../document_app
streamlit run app3.py --server.port 9000 &