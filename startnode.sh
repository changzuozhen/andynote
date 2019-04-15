#!/usr/bin/env bash
lsof -i:3000 | grep node | awk '{print $2}' | xargs kill
#ps -e | grep node | awk '{print $1}' | xargs kill -9
echo after kill
ps
node app.js > log.txt &
echo after restart
ps

echo -e "local visit \033[44;37;5m http://localhost:3000/ \033[0m\n"