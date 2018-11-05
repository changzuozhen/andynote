### systeminfo

adb shell cat /sys/class/net/wlan0/addr

adb shell cat /data/misc/wifi/*.config

adb shell cat /system/build.prop

adb shell cat /proc/cpuinfo

adb shell cat /system/build.prop | grep "brand"



### DDMS

adb shell dumpsys gfxinfo


adb shell dumpsys SurfaceFlinger
