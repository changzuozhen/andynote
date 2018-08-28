### Android查看进程内存信息
```
adb shell procrank
```
VSS- Virtual Set Size 虚拟耗用内存（包含共享库占用的内存）
RSS- Resident Set Size 实际使用物理内存（包含共享库占用的内存）
PSS- Proportional Set Size 实际使用的物理内存（比例分配共享库占用的内存）
USS- Unique Set Size 进程独自占用的物理内存（不包含共享库占用的内存）
一般来说内存占用大小有如下规律：VSS >= RSS >= PSS >= USS
 
注意：dumpsys meminfo可以查看native进程和java进程，而procrank只能查看java进程。

### OOM
Android系统对dalvik的vm heapsize作了硬性限制，当java进程申请的java空间超过阈值时，就会抛出OOM异常（这个阈值可以是48M、24M、16M等，视机型而定）
```
adb shell getprop | grep 
```
dalvik.vm.heapgrowthlimit


### 查看RAM使用情况
```
adb shell cat /proc/meminfo
```
MemTotal：可以使用的RAM总和（小于实际RAM，操作系统预留了一部分）
MemFree：未使用的RAM
Cached：缓存（这个也是app可以申请到的内存）
HightTotal：RAM中地址高于860M的物理内存总和，只能被用户空间的程序使用。
HightFree：RAM中地址高于860M的未使用内存
LowTotal：RAM中内核和用户空间程序都可以使用的内存总和（对于512M的RAM: lowTotal= MemTotal）
LowFree: RAM中内核和用户空间程序未使用的内存（对于512M的RAM: lowFree = MemFree）

### 查看进程的内存信息
```
adb shell dumpsys meminfo + packagename/pid
```

### 应用
```

testapp：
eadb shell am start -n com.tencent.wecarapptest/com.tencent.wecarapptest.MainActivity

QQ浏览器：
eadb shell am start -n com.tencent.mtt/.MainActivity

launcher：
eadb shell am start -n com.android.launcher2/com.tencent.rmtlauncher.MainActivity

音乐：
eadb shell am start -n com.tencent.wecarmusic/.UI.MusicMainActivity

eadb shell am start -n com.tencent.wecarnews/.UI.NewsMainTab

```

### zip
```
zip -r xx.zip folderpath -x "*/build/*" -x "*/.svn/*"
```


### gradle

gradle tasks --all
gradle projects
gradle properties

