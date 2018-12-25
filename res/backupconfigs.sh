#!/usr/bin/env bash
echo `date "+%Y-%m-%d %H-%M-%S"`
rm -rf ~/temp/studioconfigs
mkdir ~/temp
mkdir ~/temp/studioconfigs
mkdir ~/temp/studioconfigs/Library
mkdir ~/temp/studioconfigs/Library/Application\ Support
mkdir ~/temp/studioconfigs/Library/Caches
mkdir ~/temp/studioconfigs/Library/Logs
mkdir ~/temp/studioconfigs/Library/Preferences

# backup

cp -rf ~/Library/Application\ Support/AndroidStudio3.1 ~/temp/studioconfigs/Library/Application\ Support/AndroidStudio3.1
cp -rf ~/Library/Application\ Support/AndroidStudio3.2 ~/temp/studioconfigs/Library/Application\ Support/AndroidStudio3.2
cp -rf ~/Library/Caches/AndroidStudio3.1 ~/temp/studioconfigs/Library/Caches/AndroidStudio3.1
cp -rf ~/Library/Caches/AndroidStudio3.2 ~/temp/studioconfigs/Library/Caches/AndroidStudio3.2
cp -rf ~/Library/Logs/AndroidStudio3.1 ~/temp/studioconfigs/Library/Logs/AndroidStudio3.1
cp -rf ~/Library/Logs/AndroidStudio3.2 ~/temp/studioconfigs/Library/Logs/AndroidStudio3.2
cp -rf ~/Library/Preferences/AndroidStudio3.1 ~/temp/studioconfigs/Library/Preferences/AndroidStudio3.1
cp -rf ~/Library/Preferences/AndroidStudio3.2 ~/temp/studioconfigs/Library/Preferences/AndroidStudio3.2


# clear config

rm -rf ~/Library/Application\ Support/AndroidStudio3.1 
rm -rf ~/Library/Application\ Support/AndroidStudio3.2 
rm -rf ~/Library/Caches/AndroidStudio3.1 
rm -rf ~/Library/Caches/AndroidStudio3.2 
rm -rf ~/Library/Logs/AndroidStudio3.1 
rm -rf ~/Library/Logs/AndroidStudio3.2 
rm -rf ~/Library/Preferences/AndroidStudio3.1 
rm -rf ~/Library/Preferences/AndroidStudio3.2 

# restore

cp -rf ~/temp/studioconfigs/Library/Application\ Support/AndroidStudio3.1 ~/Library/Application\ Support/AndroidStudio3.1 
cp -rf ~/temp/studioconfigs/Library/Application\ Support/AndroidStudio3.2 ~/Library/Application\ Support/AndroidStudio3.2 
cp -rf ~/temp/studioconfigs/Library/Caches/AndroidStudio3.1 ~/Library/Caches/AndroidStudio3.1 
cp -rf ~/temp/studioconfigs/Library/Caches/AndroidStudio3.2 ~/Library/Caches/AndroidStudio3.2 
cp -rf ~/temp/studioconfigs/Library/Logs/AndroidStudio3.1 ~/Library/Logs/AndroidStudio3.1 
cp -rf ~/temp/studioconfigs/Library/Logs/AndroidStudio3.2 ~/Library/Logs/AndroidStudio3.2 
cp -rf ~/temp/studioconfigs/Library/Preferences/AndroidStudio3.1 ~/Library/Preferences/AndroidStudio3.1 
cp -rf ~/temp/studioconfigs/Library/Preferences/AndroidStudio3.2 ~/Library/Preferences/AndroidStudio3.2 


myconfigs
http
127.0.0.1
socks
1086
*.xiaojukeji.com,*.didichuxing.com


ADB Idea (1.5.2)
ADB WiFi Connect (1.7)
Android ButterKnife Zelezny (1.6.0)
Android Parcelable code generator (0.7.0)
Android Resource Usage Count (2.1)
CheckStyle-IDEA (5.23.0)
Dart (181.5656)
ECTranslation (1.5)
Flutter (31.1.1)
Kotlin (1.3.0-release-Studio3.2-1)
LayoutCreator (1.4)

false	my	/Users/AndyChang/didi/code/global/global-delivery-android/code-style/check-style.xml
true	falcon	/Users/AndyChang/didi/code/global/global-delivery-android/soda-app-rider/rider-app/build/intermediates/falcon/checkstyle.xml



# ~/Library/Application\ Support/AndroidStudio3.1 
# ~/Library/Application\ Support/AndroidStudio3.2 
# ~/Library/Caches/AndroidStudio3.1 
# ~/Library/Caches/AndroidStudio3.2 
# ~/Library/Logs/AndroidStudio3.1 
# ~/Library/Logs/AndroidStudio3.2 
# ~/Library/Preferences/AndroidStudio3.1 
# ~/Library/Preferences/AndroidStudio3.2 

# ~/temp/studioconfigs/Library/Application\ Support/AndroidStudio3.1
# ~/temp/studioconfigs/Library/Application\ Support/AndroidStudio3.2
# ~/temp/studioconfigs/Library/Caches/AndroidStudio3.1
# ~/temp/studioconfigs/Library/Caches/AndroidStudio3.2
# ~/temp/studioconfigs/Library/Logs/AndroidStudio3.1
# ~/temp/studioconfigs/Library/Logs/AndroidStudio3.2
# ~/temp/studioconfigs/Library/Preferences/AndroidStudio3.1
# ~/temp/studioconfigs/Library/Preferences/AndroidStudio3.2


# ls ~/Library/Application\ Support/AndroidStudio3.1
# ls ~/Library/Application\ Support/AndroidStudio3.2
# ls ~/Library/Caches/AndroidStudio3.1
# ls ~/Library/Caches/AndroidStudio3.2
# ls ~/Library/Logs/AndroidStudio3.1
# ls ~/Library/Logs/AndroidStudio3.2
# ls ~/Library/Preferences/AndroidStudio3.1
# ls ~/Library/Preferences/AndroidStudio3.2