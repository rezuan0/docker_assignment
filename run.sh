#!/bin/bash

python3 main.py &
# shellcheck disable=SC2164
streamlit run app1.py --server.port 30110 >> app1.log &
# shellcheck disable=SC2164
streamlit run app2.py --server.port 30120 >> app2.log 2>&1
# shellcheck disable=SC2164
streamlit run app3.py --server.port 30130 >> app3.log 2>&1

