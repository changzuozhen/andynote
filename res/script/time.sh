#!/usr/bin/env bash
# #明天凌晨 对应的毫秒时间戳
# tomorrow=$(date -d next-day +%Y-%m-%d)
# timeStamp=$(date -d "$tomorrow 00:00:00" +%s)
# currentTimeStamp=$(($timeStamp * 1000 + 10#$(date "+%N") / 1000000)) #将current转换为时间戳，精确到毫秒
# echo $currentTimeStamp

# #当前时间 对应的毫秒时间戳
# current=$(date "+%Y-%m-%d %H:%M:%S")
# timeStamp=$(date -d "$current" +%s)
# currentTimeStamp=$((timeStamp * 1000 + 10#$(date "+%N") / 1000000))
# #将current转换为时间戳，精确到毫秒
# echo $currentTimeStamp

current=$(date "+%Y-%m-%d %H:%M:%S")
timeStamp=$(date -d "$current" +%s)
#将current转换为时间戳，精确到毫秒
currentTimeStamp=$((timeStamp * 1000 + $(date "+%N") / 1000000))
echo $currentTimeStamp

# #当前时间 对应的秒时间戳
# current=$(date "+%Y-%m-%d %H:%M:%S")
# timeStamp=$(date -d "$current" +%s)
# currentTimeStamp=$(((timeStamp * 1000 + 10#$(date "+%N") / 1000000) / 1000)) #将current转换为时间戳，精确到秒
# echo $currentTimeStamp
