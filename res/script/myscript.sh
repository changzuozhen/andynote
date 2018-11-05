#!/usr/bin/env bash
# TEMPFILES="/Users/AndyChang/Tencent/Dev/tempFiles/"
# DEVHOME="/Users/AndyChang/Tencent/Dev/"
# echo ${TEMPFILES}
# echo ${DEVHOME}

# BACKUP_FILES=(
#     .gitignore
#     build.gradle
#     # wecarmusic/src/main/res/values-w820dp/dimens.xml
#     # wecarmusic/src/main/java/com/tencent/wecarmusic/util/ApiUrl.java
#     # wecarmusic/src/main/java/com/tencent/wecarmusic/common/log/LogUtils.java
# )

# backupFiles() {
#     RESTOREDIRFILES="$1"
#         for var in ${BACKUP_FILES[@]}; 
#         do
#             echo "Backup "$var
#             cp ${RESTOREDIRFILES}"$var" ${TEMPFILES}`basename $var`
#         done
# }
# recoverFiles() {
#     RESTOREDIRFILES="$1"
#     for var in ${BACKUP_FILES[@]}; 
#     do
#         echo "Restore "$var
#         cp ${TEMPFILES}`basename $var` ${RESTOREDIRFILES}"$var"
#     done
# }
# fetchWithGit() {
#     MUSICDIRS=(
#         # /Users/AndyChang/Tencent/Dev/wecarListen/
#         /Users/AndyChang/Tencent/Dev/V2.0/wecarListen/
        
#         /Users/AndyChang/Tencent/Dev/BennyListView/
        
#         /Users/AndyChang/Tencent/Dev/V2.0/BennyListViewDemo/

#         /Users/AndyChang/Tencent/Dev/V1.1/wecarmusic/

#         /Users/AndyChang/Tencent/Dev/WeCarBugReport/

#         /Users/AndyChang/Tencent/Dev/V2.0/WeCarNetAssistant/

#         )

#     for var in ${MUSICDIRS[@]}; do
#         RESTOREDIRFILES=${var}
#         echo "开始处理  ${RESTOREDIRFILES}"
#         cd ${RESTOREDIRFILES}
#         backupFiles ${RESTOREDIRFILES}
#         git svn fetch
#         git reset --hard git-svn
#         recoverFiles ${RESTOREDIRFILES}
#     done

#     GITDIRS=(
#         ${DEVHOME}wecarmusic_v1.1/
#         ${DEVHOME}WeCarBugReport/
#         "/Users/AndyChang/Tencent/Dev/readonly/svn_with_git/WeCarFramework/"
#         /Users/AndyChang/Tencent/Dev/wecarphone/
#         )
#     for var in ${GITDIRS[@]}; do
#         RESTOREDIRFILES=${var}
#         echo "开始处理  ${RESTOREDIRFILES}"
#         cd ${RESTOREDIRFILES}
#         git svn fetch
#         git reset --hard git-svn
#         cd ${DEVHOME}wecarmusic/
#     done
    
# }


gitsvnfetch() {
    for var in "$@"
    do
        echo "开始处理  $var"
        cd $var
        git svn fetch
        git reset --hard git-svn
    done
}

# fetchWithGit

svnclean() {
    echo "开始处理 svn cleanup $1"
    svn cleanup $1
}

svnup(){
    echo "开始处理 svn up $1"
    svn up $1    
}

svnUpAndClean() {
    for var in "$@"
    do
        svnup $var
        svnclean $var
    done
}

rmfileRecursively() {
    path=`pwd`
    echo "rmfileRecursively $1 $2"
    # ".DS_Store"
    sudo find $1 -name $2 -depth -exec 
    # for var in ${files[@]}; do
    #     echo "开始处理  ${var}"
    # done
    # sudo find $1 -name $2 -depth -exec rm {} \;
}


# wecarmusic_twice_update/
# OTHER_DIRS=(
# /Users/AndyChang/Tencent/Dev/V2.0/节目视觉/
# /Users/AndyChang/Tencent/Dev/V2.0/音乐视觉资源/
# /Users/AndyChang/Tencent/Dev/V2.0/HMI 2.0_ROM_FM/

# /Users/AndyChang/Tencent/Dev/V2.0/BennyListViewDemo/
# # /Users/AndyChang/Tencent/Dev/NaviData/
# # /Users/AndyChang/Downloads/WorkDownload/刷机/优盘工具/数据/导航数据/data/

# /Users/AndyChang/Tencent/Dev/V2.0/BennyListViewDemo/
# /Users/AndyChang/Tencent/Dev/V2.0/WeCarFramework/
# /Users/AndyChang/Tencent/Dev/V2.0/WeCarLauncher/
# /Users/AndyChang/Tencent/Dev/V2.0/wecarqq/
# /Users/AndyChang/Tencent/Dev/wecarListen/

# /Users/AndyChang/Tencent/Dev/wecarphone/
# /Users/AndyChang/Tencent/Dev/V2.0/WeCarNetAssistant/


# /Users/AndyChang/Tencent/Dev/V1.1/wecarmusic_adayo/
# /Users/AndyChang/Tencent/Dev/V1.1/wecarmusic/
# )


# # OTHER_DIRS="Settings/ WeCar* wecar* SystemUI/"
# # RELEASEDIR="/Users/AndyChang/Tencent/Dev/wecarListen/"
# OTHERDIRS=(
    
    
    
#     # "/Users/AndyChang/Downloads/Code/wormhole_proj/trunk/WeCarROM/release/adayo/"
#     # "/Users/AndyChang/Downloads/Code/wormhole_proj/trunk/WeCarROM/release/roadrover/"
#     # "/Volumes/DeveloperSSD/Developer/wormhole_proj/"
#     # "/Users/AndyChang/Downloads/Developer/wormhole_proj/"
#     )
# svnUpAndClean ${OTHER_DIRS[@]} ${RELEASEDIR} ${OTHERDIRS[@]}
