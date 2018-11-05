#!/usr/bin/env bash
echo 'git pull'
git pull

echo 'Start to build your book ...'
gitbook build
echo 'Build Success！'

echo -e "Now visit \033[44;37;5m http://localhost:3000/ \033[0m\n"