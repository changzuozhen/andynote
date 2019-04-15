---
id: gitbook
title: gitbook 技巧
sidebar_label: gitbook
author: andy
---


# GitBook

## localtest

**gitbook local serve auto refresh**

```bash
cd **path**

npm install gitbook-cli -g
# npm install express --save
rm -rf _book
gitbook serve &
```

~~node local serve~~

```bash
gitbook build
npm install express --save
node app.js &
```
~~node local refresh~~

```bash
curl http://localhost:3000/rebuild
```


## publish

```bash
cd **path**
# rm -rf _book
# gitbook build
# ./build.sh

# push local changes to server
git push

# notify server to pull changes and rebuild
curl http://ip:3000/rebuild
```


## centos server setup


* login
```bash
ssh root@ip
```

* clone
[文档仓库地址]()


* environment

```bash
yum install -y wget
wget https://nodejs.org/dist/v8.11.4/node-v8.11.4-linux-x64.tar.xz
xz -d node-v8.11.4-linux-x64.tar.xz
tar -xf node-v8.11.4-linux-x64.tar
ln -s ~/node-v8.11.4-linux-x64/bin/node /usr/bin/node
ln -s ~/node-v8.11.4-linux-x64/bin/npm /usr/bin/npm
ln -s ~/node-v8.11.4-linux-x64/bin/npx /usr/bin/npx
ln -s ~/node-v8.11.4-linux-x64/bin/n /usr/bin/n

npm install gitbook-cli -g
ln -s ~/node-v8.11.4-linux-x64/bin/gitbook /usr/bin/gitbook

sudo yum install ruby

sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
sudo yum install yarn

npm install gitbook-cli -g

sudo npm install supervisor -g
ln -s ~/node-v8.11.4-linux-x64/bin/supervisor /usr/bin/supervisor

```

**node serve**

```bash
cd **path**
git pull

gitbook build
npm install express --save
node app.js &
```

~~gitbook 服务~~

```bash
cd **path**
git pull
gitbook serve &
```

# ~~Github-Auto-Deploy~~

https://github.com/logsol/Github-Auto-Deploy

```bash
python GitAutoDeploy.py
python --daemon-mode GitAutoDeploy.py
```


## ref

https://expressjs.com/

http://book.opschina.org/gitbook-auto-checkout-compile-and-upload.html


https://github.com/GitbookIO/gitbook

https://plugins.gitbook.com/

[gitbook结合github写书及发布到gitbook上](https://blog.csdn.net/kuangshp128/article/details/80714353)

[Gitbook 使用入门](https://tonydeng.github.io/gitbook-zh/gitbook-howtouse/index.html)

# Docusaurus

https://github.com/facebook/Docusaurus

* [CentOS安装NodeJS](https://blog.csdn.net/xerysherryx/article/details/78920978)

https://nodejs.org/en/

```
yum install -y wget
wget https://nodejs.org/dist/v8.11.4/node-v8.11.4-linux-x64.tar.xz
xz -d node-v8.11.4-linux-x64.tar.xz
tar -xf node-v8.11.4-linux-x64.tar
ln -s ~/node-v8.11.4-linux-x64/bin/node /usr/bin/node
ln -s ~/node-v8.11.4-linux-x64/bin/npm /usr/bin/npm
ln -s ~/node-v8.11.4-linux-x64/bin/npx /usr/bin/npx
ln -s ~/node-v8.11.4-linux-x64/bin/n /usr/bin/n


npm install -g docusaurus
npm install --global docusaurus-init


# At any time after Docusaurus is installed, you can check your current version of Docusaurus by going into the website directory and typing yarn outdated docusaurus or npm outdated docusaurus.
yarn upgrade docusaurus --latest


npm install -g npx


vim /etc/profile
export PATH=root/node-v8.11.4-linux-x64/bin:$PATH


```

* [Docusaurus – 5 分钟为开源项目创建一个静态网站，文档、API 一应俱全](https://www.appinn.com/docusaurus)
[centos7安装nodejs 和 yarn](http://www.bubuko.com/infodetail-2063398.html)
在 CentOS、Fedora、RHEL 上，你可以通过 RPM 包仓库安装 Yarn
```
sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
sudo yum install yarn
```

* [yarn](https://yarn.bootcss.com/docs/install/#mac-stable)

## ps grep awk kill -9 杀掉指定的进程
程序成为僵尸进程以后需要通过进程号来强制终止，因此先需要获取进程的pid

 ```bash
 ps | grep node | awk 'NR==1{print $1}'
 ```  

 获取test进程的ID，具体形式要按照linux输出的格式来，我的设备中的是第一行的第一列的第一个参数即为test的PID
由于通过管道把PID传给KILL -9无法生效。因此需要使用 

```bash
#ps | grep node | awk 'NR==1{print $1}' | xargs kill -9
lsof -i:3000 | grep node | awk '{print $2}' | xargs kill
```

但是当前嵌入式设备上无法使用xargs 所以我们需要使用如下的方式：

```bash
kill -9 `ps | grep node | awk 'NR==1{print $1}' `
```  
注意这里是反单引号

或者：

```bash
 kill -9 $(ps | grep node | awk 'NR==1{print $1}') 
```

```bash
ps
ps -e | grep node | awk '{print $1}' | xargs kill -9
echo after kill
ps
yarn start > log.txt &
echo after restart
ps
```

# ref
* [CentOS查看和修改PATH环境变量的方法](https://blog.csdn.net/boolbo/article/details/52437760)
* [Changing Process States](https://www.digitalocean.com/community/tutorials/how-to-use-bash-s-job-control-to-manage-foreground-and-background-processes#changing-process-states)
	* CTRL-Z
	* jobs
	* fg
	* bg

