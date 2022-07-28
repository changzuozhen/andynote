#!/bin/bash
# cleancode.sh /Users/changzuozhen/dev/github/
# cleancode.sh /Users/changzuozhen/dev/github/

a=(
	"/Users/changzuozhen/dev/github"
	"/Users/changzuozhen/dev/nav"
	"/Users/changzuozhen/dev/test"
)
adb shell rm /sdcard/Download/syn
for str in ${a[@]}; do
	echo $str
	./cleancode.sh $str
	adb push $str "/sdcard/Download/syn/dev/"
done

b=(
	"/Users/changzuozhen/SynologyDrive/mt"
	"/Users/changzuozhen/SynologyDrive/mweb"
	"/Users/changzuozhen/SynologyDrive/private"
)
for str in ${b[@]}; do
	echo $str
	adb push $str "/sdcard/Download/syn/"
done
