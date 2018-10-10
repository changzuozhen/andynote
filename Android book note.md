# 构建嵌入式Android系统

2018年10月10日

硬件与合规性要求
ACP, Application Compatibility Program
    CDD, Compliance Definition Document 兼容性定义文档
    CTS, Compliance Test Suit 兼容性测试套件

https://source.android.com/compatibility

Android 的结构
![](media/15391427299634.jpg)

![](media/15391723808636.jpg)


[Google I/O 2008 - Dalvik Virtual Machine Internals](https://www.youtube.com/watch?v=ptjedOZEXPM)

HAL (Hardware Abstraction Layer)

![](media/15391606761402.jpg)

开源代码查看

Ctags
[AndroidXRef](http://androidxref.com/)

![](media/15391636079369.jpg)

## 第三章 AOSP入门

AOSP 标签和分支查看技巧

```shell
mkdir -p ~/android/aosp-branches-tags
cd ~/android/aosp-branches-tags
git clone https://android.googlesource.com/platform/manifest.git
cd manifest
git tag
git branch -a
```

# 最强Android书 架构大剖析-崔孝晨-译

