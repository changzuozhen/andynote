

#### MacShell

MacOS 10.12安全与隐私没有允许任何来源的app选项解决办法
sudo spctl --master-disable

#####关机
```
立刻关机输入 sudo halt 或者 sudo shutdown -h now 大家可以尝试一下，是不是秒关哈，至少我的air是秒关的。。。

十分钟后关机 sudo shutdown -h +10
立即重启 sudo reboot 或者 sudo shutdown -r now
晚上八点关机 sudo shutdown -h 20:00
```

##### 显示隐藏文件

```
defaults write com.apple.finder AppleShowAllFiles -bool true;killall Finder;
 
```

##### .DS_Store

.DS_Store是Mac OS保存文件夹的自定义属性的隐藏文件，如文件的图标位置或背景色，相当于Windows的desktop.ini。

###### 1，禁止.DS_store生成：
打开 “终端” ，复制黏贴下面的命令，回车执行，重启Mac即可生效。

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE; killall Finder; 


###### 2，恢复.DS_store生成：
defaults delete com.apple.desktopservices DSDontWriteNetworkStores

作者：Marsokit
链接：https://www.zhihu.com/question/20345704/answer/19471793
来源：知乎
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

###### 3，删除所有.DS_Store文件
在terminal中输入:
sudo find / -name ".DS_Store" -depth -exec rm {} \;

sudo find ~/Desktop -name ".DS_Store" -depth -exec rm {} \;


##### 启动盘

sudo /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia --volume /Volumes/NO\ NAME --applicationpath /Applications/Install\ OS\ X\ El\ Capitan.app --nointeraction



#### 常用命令
```
du 查询磁盘使用情况
df 重要~~显示文件系统的总空间和可用空间
w 显示当前系统活动的总信息
passwd 修改用户密码
passwd
chmod 改变文件或目录的权限
chmod ug+x filename
umask 定义创建文件的权限掩码
umask 027
chown 改变文件或目录的属主
chown newowner filename
chgrp 改变文件或目录的所属组
chgrp staff filename
xlock 给终端上锁
xlock -remote
修复整个系统中文件的权限
diskutil repairpermissions /
严格的说这不是一个unix 命令，而是osx一个软件，记得修改或添加的驱动就执行一次

显示 Mac 隐藏文件的命令：
 
defaults write com.apple.finder AppleShowAllFiles -bool true

```

#### setup
```
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/bin/sublime

sudo ln -s "" /usr/bin/
sudo ln -s "" /usr/bin/

```

####Shell替换：Shell变量替换，命令替换，转义字符


```
#!/bin/bash

a=10
echo -e "Value of a is $a \n"

```
这里 -e 表示对转义字符进行替换。如果不使用 -e 选项，将会原样输出


转义字符 | 含义
:------------ | :------------- 
\\ | 反斜杠
\a | 警报，响铃
\b	| 退格（删除键）
\f	| 换页(FF)，将当前位置移到下页开头
\n	| 换行
\r	| 回车
\t	| 水平制表符（tab键） 
\v	| 垂直制表符

#### Shell特殊变量：Shell $0, $#, $*, $@, $?, $$和命令行参数

变量 | 含义
---- | ----
$0 | 当前脚本的文件名
$n | 传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2。
$# | 传递给脚本或函数的参数个数。
$* | 传递给脚本或函数的所有参数。
$@ | 传递给脚本或函数的所有参数。被双引号(" ")包含时，与 $* 稍有不同，下面将会讲到。
$? | 上个命令的退出状态，或函数的返回值。
$$ | 当前Shell进程ID。对于 Shell 脚本，就是这些脚本所在的进程ID。

#### 变量替换

变量替换可以根据变量的状态（是否为空、是否定义等）来改变它的值

可以使用的变量替换形式：

形式 | 说明
---- | ----
${var} | 变量本来的值
${var:-word} | 如果变量 var 为空或已被删除(unset)，那么返回 word，但不改变 var 的值。
${var:=word} | 如果变量 var 为空或已被删除(unset)，那么返回 word，并将 var 的值设置为 word。
${var:?message} | 如果变量 var 为空或已被删除(unset)，那么将消息 message 送到标准错误输出，可以用来检测变量 var 是否可以被正常赋值。若此替换出现在Shell脚本中，那么脚本将停止运行。
${var:+word} | 如果变量 var 被定义，那么返回 word，但不改变 var 的值。

请看下面的例子：

```
#!/bin/bash

echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"

echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"

unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"

var="Prefix"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"

echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"
```

运行结果：

```
Variable is not set
1 - Value of var is
Variable is not set
2 - Value of var is Variable is not set

3 - Value of var is
This is default value
4 - Value of var is Prefix
Prefix
5 - Value of var is Prefix
```