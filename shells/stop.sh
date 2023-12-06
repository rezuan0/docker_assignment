#!/bin/bash
# Stop main
# shellcheck disable=SC2046
kill $(lsof -t -i :8080)
# Stop app1
kill $(lsof -t -i :7000)
# Stop app2
kill $(lsof -t -i :8000)
# Stop app3
kill $(lsof -t -i :9000)