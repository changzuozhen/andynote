https://github.com/GitbookIO/gitbook

https://plugins.gitbook.com/

[gitbook结合github写书及发布到gitbook上](https://blog.csdn.net/kuangshp128/article/details/80714353)

[Gitbook 使用入门](https://tonydeng.github.io/gitbook-zh/gitbook-howtouse/index.html)


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

# ref
* [CentOS查看和修改PATH环境变量的方法](https://blog.csdn.net/boolbo/article/details/52437760)
* [Changing Process States](https://www.digitalocean.com/community/tutorials/how-to-use-bash-s-job-control-to-manage-foreground-and-background-processes#changing-process-states)
	* CTRL-Z
	* jobs
	* fg
	* bg