cd /Users/AndyChang/Tencent/WorkDev/backup
rm wecarListen.tar.gz

cd /Users/AndyChang/Tencent/WorkDev/Trunk

tar -zcvf wecarListen.tar.gz \
--exclude=wecarListen/.git \
--exclude=wecarListen/.svn \
--exclude=*.svn \
--exclude=*/build/ \
--exclude=*.DS_Store \
--exclude=*.iml \
--exclude=wecarListen/.gradle \
wecarListen



cd /Users/AndyChang/Tencent/WorkDev/Trunk
tar -zcvf MusicApp.tar.gz \
--exclude=wecarListen/.git \
--exclude=wecarListen/.svn \
--exclude=*.svn \
--exclude=*/build/ \
--exclude=*.DS_Store \
--exclude=*.iml \
--exclude=wecarListen/.gradle \
MusicApp
# --exclude=wecarListen/build \
# --exclude=wecarListen/libcommonui \
# --exclude=wecarListen/libwecarcommon \
# --exclude=wecarListen/wecarmusic/build \
# --exclude=wecarListen/wecarnews/build \
# --exclude=wecarListen/wecarradio/build \
# --exclude=wecarListen/bennylistview/build \
# --exclude=wecarListen/bennylistViewDemo/build \


# tar -zcvf wecarListen.tar.gz \
# --exclude=wecarListen/.git \
# --exclude=wecarListen/.svn \
# --exclude=wecarListen/build \
# --exclude=wecarListen/libcommonui \
# --exclude=wecarListen/libwecarcommon \
# --exclude=wecarListen/wecarmusic/build \
# --exclude=wecarListen/wecarnews/build \
# --exclude=wecarListen/wecarradio/build \
# --exclude=wecarListen/bennylistview/build \
# --exclude=wecarListen/bennylistViewDemo/build \
# --exclude=wecarListen/listencommon/build \
# --exclude=*.iml \
# --exclude=wecarListen/libwecarplatform/ wecarListen

mv /Users/AndyChang/Tencent/WorkDev/Trunk/wecarListen.tar.gz /Users/AndyChang/Tencent/WorkDev/backup/wecarListen.tar.gz
mv /Users/AndyChang/Tencent/WorkDev/Trunk/MusicApp.tar.gz /Users/AndyChang/Tencent/WorkDev/backup/MusicApp.tar.gz

cd /Users/AndyChang/Tencent/WorkDev/backup

rm -rf /Users/AndyChang/Tencent/WorkDev/backup/wecarListen


echo ****************************

tar -zxvf /Users/AndyChang/Tencent/WorkDev/backup/wecarListen.tar.gz
tar -zxvf /Users/AndyChang/Tencent/WorkDev/backup/MusicApp.tar.gz

cd /Users/AndyChang/Tencent/WorkDev/