#!/usr/bin/env bash
echo 'git pull'
git pull

echo 'Start to build your book ...'
gitbook build
echo 'Build Success！'

echo -e "Now visit \033[44;37;5m http://10.96.99.115:3000/ \033[0m\n"