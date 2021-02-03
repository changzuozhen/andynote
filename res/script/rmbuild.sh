#!/usr/bin/env bash
function printLog() {
  t4=$(date '+%Y-%m-%d %H:%M:%S')
  echo ""
  echo -e "\033[47;30m  $t4 $*  \033[0m"
  echo ""
}

function readDir(){
    for element in `ls $1`
    do
        dir_or_file=$1"/"$element
        if [ -d $dir_or_file ]
        then
            if [ $element = "build" ]
            then
                printLog "$dir_or_file"
                rm -rfv $dir_or_file
            else
                readDir $dir_or_file
            fi
        fi
    done
}
# root_dir=$(cd "$(dirname "$0")";pwd)

printLog $1

# printLog $root_dir
# readDir $root_dir
readDir $1

find $1 -name "*.hprof" |xargs rm -rf