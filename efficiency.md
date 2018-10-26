* [reactnative](reactnative.md)

# 开发工具

[SQLite 管理工具](http://sqlitebrowser.org/)

[开源好用的MySQL客户端](http://www.sequelpro.com/download)

[ShadowsocksX-NG](https://github.com/shadowsocks/ShadowsocksX-NG)

https://github.com/shadowsocks/ShadowsocksX-NG/releases


# 下载工具

[Mac 百度云加速下载，突破限速，大文件无压力（小白使用无压力）](http://xclient.info/a/6b6c46df-3e4f-1b17-ae30-0c8b49df92cc.html?t=b67bb3cceeb4abb131135f33e92b6ed191d10c17)

Proxyee Down 是一款开源的免费 HTTP 高速下载器
https://github.com/proxyee-down-org/proxyee-down


# terminal 文件数

https://www.cnet.com/news/terminal-fun-options-for-printing-folder-and-subfolder-contents/

## List all subfolders with formatted output (go ahead, copy and paste it to the Terminal)

```
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
```

## Installing and using "tree"


http://mama.indstate.edu/users/ice/tree/

```bash
curl -O http://mama.indstate.edu/users/ice/tree/src/tree-1.7.0.tgz

tar -xzf tree-1.7.0.tgz

make

# macOS
mv tree ~/bin/

# centos
mv tree /usr/bin/

tree -pfhFClN --dirsfirst -L 1
```


# 由于众所周知的原因，可以考虑切换源为 taobao 源
npm set registry https://registry.npm.taobao.org/

```shell
brew install aria2
youtube-dl -i --proxy http://127.0.0.1:1087 --external-downloader aria2c --external-downloader-args "-x 16  -k 1M"

# 文件列表下载
youtube-dl -i -o '%(series)s/%(id)s - %(fulltitle)s' --proxy http://127.0.0.1:1087 --convert-subs srt --write-sub --all-subs --embed-subs --external-downloader aria2c --external-downloader-args "-x 16  -k 1M" -a The\ Beginner\'s\ Guide\ to\ React.txt

# 打印信息
# youtube-dl -i --proxy http://127.0.0.1:1087 --print-json -s https://egghead.io/lessons/react-introduction-to-the-beginner-s-guide-to-reactjs

# 格式化下载
# youtube-dl -o '%(series)s/%(id)s - %(fulltitle)s' --proxy http://127.0.0.1:1087 --convert-subs srt --write-sub --all-subs --embed-subs --external-downloader aria2c --external-downloader-args "-x 16  -k 1M" https://egghead.io/lessons/react-introduction-to-the-beginner-s-guide-to-reactjs


```

https://aria2.github.io/


