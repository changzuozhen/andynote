#!/usr/bin/env bash

rmfileRecursively() {
    echo "rmfileRecursively $@"
    path=`pwd`
    fileName=".DS_Store"
    # ".DS_Store"
    # sudo find $1 -name $2 -depth -exec 
    for NAME in `sudo find $path -name $fileName -depth `
        do
            echo $NAME
            sudo rm $NAME
        done
    # for var in ${files[@]}; do
    #     echo "开始处理  ${var}"
    # done
    # sudo find $1 -name $2 -depth -exec rm {} \;
}
rmfileRecursively $@
# for NAME in `brew cask list`
#     do 
#         echo "check $NAME"
#         brew cask info $NAME | grep "Not installed"
#         if [ $? -eq 0 ]
#             then
#             brew cask info $NAME
#             echo "update $NAME"
#             brew cask install ${NAME}
#             echo "update done $NAME"
#             brew cask info $NAME
#         fi
#     done