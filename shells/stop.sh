
# Stop main
# shellcheck disable=SC2046
kill $(lsof -t -i :8080)
# Stop app1
kill $(lsof -t -i :30110)

# Stop app2
kill $(lsof -t -i :30120)

# Stop app3
kill $(lsof -t -i :30130)