#!/bin/bash
ps | grep node | awk '{print $1}' | xargs kill -9
ps | grep moco | awk '{print $1}' | xargs kill -9
# echo after kill
# ps

echo moco
cd /Users/AndyChang/didi/code/android/soda-pandora-android/soda-delivery-android/docs/moco/
echo /Users/AndyChang/didi/code/android/soda-pandora-android/soda-delivery-android/docs/moco/ 
java -jar moco-runner-0.12.0-standalone.jar http -p 12306 -c config.json > log.txt &

cd ~/Developer/GitHub/andynote
echo "~/Developer/GitHub/andynote"
gitbook serve > log.txt &

cd ~/didi/code/global/soda-foundation-docusaurus/website
echo "~/didi/code/global/soda-foundation-docusaurus/website"
yarn start > log.txt &

ps

