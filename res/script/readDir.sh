#!/bin/bash
function readDir() {
  for element in $(# 遍历 ls 输出
    ls $1
  ); do
    dir_or_file=$1"/"$element    # 拼接完整地址
    if [ -d $dir_or_file ]; then # 判断是文件夹
      echo "$dir_or_file"         # 输出文件夹路径
      readDir $dir_or_file        # 遍历文件夹
    else
      echo "$dir_or_file" # 输出文件路径
    fi
  done
}
readDir $1
