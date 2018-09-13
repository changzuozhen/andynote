#!/bin/bash
ps | grep node | awk '{print $1}' | xargs kill -9
echo after kill
ps
node app.js > log.txt &
echo after restart
ps