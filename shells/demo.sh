#!/bin/bash

python3 main.py &
# shellcheck disable=SC2164
cd post_app/
streamlit run app1.py --server.port 30110 >> ../logs/app1.log 2>&1 &