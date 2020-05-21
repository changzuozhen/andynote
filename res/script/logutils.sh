#!/usr/bin/env bash

function printLog() {
  t4=$(date '+%Y-%m-%d %H:%M:%S')
  echo ""
  echo -e "\033[47;30m  $t4 $*  \033[0m"
  echo ""
}

function logv() {
  t4=$(date '+%Y-%m-%d %H:%M:%S')
  echo -e "\033[1;34m  $t4 $*  \033[0m"
}
function logd() {
  t4=$(date '+%Y-%m-%d %H:%M:%S')
  echo -e "\033[1;30m  $t4 $*  \033[0m"
}
function logi() {
  t4=$(date '+%Y-%m-%d %H:%M:%S')
  echo -e "\033[1;32m  $t4 $*  \033[0m"
}
function logw() {
  t4=$(date '+%Y-%m-%d %H:%M:%S')
  echo -e "\033[1;33m  $t4 $*  \033[0m"
}
function loge() {
  t4=$(date '+%Y-%m-%d %H:%M:%S')
  echo -e "\033[41;30m  $t4 $*  \033[0m"
}
function printLogTest() {

  logv "logv"
  logd "logd"
  logi "logi"
  logw "logw"
  loge "loge"

  echo

  t4=$(date '+%Y-%m-%d %H:%M:%S')
  echo -e "\033[41;30m  $t4 $*  \033[0m"
  echo -e "\033[0m none  $t4 $*  \033[0m"
  echo -e "\033[30m black  $t4 $*  \033[0m"
  echo -e "\033[1;30m dark_gray  $t4 $*  \033[0m"
  echo -e "\033[0;34m blue  $t4 $*  \033[0m"
  echo -e "\033[1;34m light_blue  $t4 $*  \033[0m"
  echo -e "\033[0;32m green  $t4 $*  \033[0m"
  echo -e "\033[1;32m light_green  $t4 $*  \033[0m"
  echo -e "\033[0;36m cyan  $t4 $*  \033[0m"
  echo -e "\033[1;36m light_cyan  $t4 $*  \033[0m"

  echo -e "\033[0;31m red  $t4 $*  \033[0m"
  echo -e "\033[1;31m light_red  $t4 $*  \033[0m"
  echo -e "\033[0;35m purple  $t4 $*  \033[0m"
  echo -e "\033[1;35m light_purple  $t4 $*  \033[0m"
  echo -e "\033[0;33m brown  $t4 $*  \033[0m"
  echo -e "\033[1;33m yellow  $t4 $*  \033[0m"
  echo -e "\033[0;37m light_gray  $t4 $*  \033[0m"
  echo -e "\033[1;37m white  $t4 $*  \033[0m"
  echo -e "\033[0m none  $t4 $*  \033[0m"
  echo -e "\033[0m none  $t4 $*  \033[0m"
  echo -e "\033[0m none  $t4 $*  \033[0m"
  echo -e "\033[0m none  $t4 $*  \033[0m"
  echo -e "\033[0m none  $t4 $*  \033[0m"

  echo -e "\033[40;37m 黑底白字  $t4 $*  \033[0m"
  echo -e "\033[41;30m 红底黑字  $t4 $*  \033[0m"
  echo -e "\033[41;37m 红底白字  $t4 $*  \033[0m"
  echo -e "\033[41;34m 红底蓝字  $t4 $*  \033[0m"
  echo -e "\033[42;34m 绿底蓝字  $t4 $*  \033[0m"
  echo -e "\033[43;34m 黄底蓝字  $t4 $*  \033[0m"
  echo -e "\033[44;30m 蓝底黑字  $t4 $*  \033[0m"
  echo -e "\033[45;30m 紫底黑字  $t4 $*  \033[0m"
  echo -e "\033[46;30m 天蓝底黑字  $t4 $*  \033[0m"
  echo -e "\033[47;34m 白底蓝字  $t4 $*  \033[0m"
  echo -e "\033[47;30m 白底黑字  $t4 $*  \033[0m"
  echo -e "\033[4;31m 下划线红字  $t4 $*  \033[0m"
  echo -e "\033[5;31m 红字在闪烁  $t4 $*  \033[0m"
  echo -e "\033[8m 消隐  $t4 $*  \033[0m "
}
