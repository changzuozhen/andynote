#!/bin/zsh
adbps() {
    if [ $# -eq 0 ]; then
        echo 没有命令行参数
        echo "************"
    	    adb shell ps
    else
    	for var in "$@"
    	do
    	    echo "************"
    	    echo "`adb shell ps | grep $var`"
	
#   	     IFS=$'\n\n'
#   	     for var1 in `adb shell ps | grep $var`
#   	     do
#   	         echo "开始处理  $var1"
#   	         var2=`echo $var1 | cut -c10-15`
#   	         echo "关闭pid：$var2"
#   	         adb shell kill -9 $var2
#   	     done
    	done
    fi
}

adbps $@

#		adb shell kill -9 `adb shell ps | grep $var | cut -c10-15`