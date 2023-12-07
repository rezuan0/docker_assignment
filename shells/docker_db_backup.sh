#!/bin/bash

echo "Enter Container name: "
read container
echo "Enter user name of the MySql Database: "
# shellcheck disable=SC2034
read username

echo "Enter your Database name: "
read db_name
echo "Enter database password: "
read -s pass

echo "Enter backup db name: "
read dump

docker exec -it $container mysql -u $username –p $pass $db_name > /home/rezuan/Desktop/docker_assignment/DB_Backup/$dump.sql
