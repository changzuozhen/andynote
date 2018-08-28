#!/bin/zsh
adbkill() {
    if [ $# -eq 0 ]; then
        echo 没有命令行参数,要杀死全部线程，还不如重启算了
    else
        for var in "$@"
        do
            echo "************"
            echo "`adb shell ps | grep $var`"
    
            IFS=$'\n\n'
            for var1 in `adb shell ps | grep $var`
            do
                echo "开始处理  $var1"
                var2=`echo $var1 | cut -c10-15`
                echo "关闭pid：$var2"
                adb shell kill -9 $var2
            done
        done
    fi
}

adbkill $@

#		adb shell kill -9 `adb shell ps | grep $var | cut -c10-15`