#!/usr/bin/env bash
cd ~
mkdir temp
cd temp
mkdir studioconfigs
cd studioconfigs

mkdir Library
mkdir Library/Preferences
mkdir Library/Preferences/AndroidStudio3.1
mkdir Library/Caches
mkdir Library/Caches/AndroidStudio3.1
mkdir Library/Application\ Support
mkdir Library/Application\ Support/AndroidStudio3.1
cp -rf ~/Library/Preferences/AndroidStudio3.1  ./Library/Preferences/AndroidStudio3.1
cp -rf ~/Library/Caches/AndroidStudio3.1 ./Library/Caches/AndroidStudio3.1
cp -rf ~/Library/Application\ Support/AndroidStudio3.1 ./Library/Application\ Support/AndroidStudio3.1
cp -rf ~/Library/Logs/AndroidStudio3.1 ./Library/Logs/AndroidStudio3.1
