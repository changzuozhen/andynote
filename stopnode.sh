#!/usr/bin/env bash
ps
#ps -e | grep node | awk '{print $1}' | xargs kill -9
lsof -i:3000 | grep node | awk '{print $2}' | xargs kill
lsof -i:80 | grep node | awk '{print $2}' | xargs kill
echo after kill
ps