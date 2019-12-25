#!/usr/bin/env bash
lsof -i:3000 | grep node | awk '{print $2}' | xargs kill
lsof -i:80 | grep node | awk '{print $2}' | xargs kill
#ps -e | grep node | awk '{print $1}' | xargs kill -9
echo after kill
ps
node app.js > log.txt &
echo after restart
ps

var_ip=`ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2`
url="http://"${var_ip}":80/"
echo -e "\033[32m "${url}" \033[0m"
