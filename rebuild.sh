#!/usr/bin/env bash
echo 'git pull'
git fetch -p
git reset --hard master
git pull --rebase

echo 'Start to build your book ...'
gitbook build
echo 'Build Success！'

echo -e "Now visit \033[44;37;5m http://locaclhost:3000/ \033[0m\n"