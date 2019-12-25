#!/usr/bin/env bash
echo 'git pull'
git fetch -p
git reset --hard master
git pull --rebase

echo 'Start to build your book ...'
gitbook build
echo 'Build Success！'

var_ip=`ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2`
url="http://"${var_ip}":80/"
echo -e "\033[32m "${url}" \033[0m"
