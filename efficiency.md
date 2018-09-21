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


[Mac 百度云加速下载，突破限速，大文件无压力（小白使用无压力）](http://xclient.info/a/6b6c46df-3e4f-1b17-ae30-0c8b49df92cc.html?t=b67bb3cceeb4abb131135f33e92b6ed191d10c17)

Proxyee Down 是一款开源的免费 HTTP 高速下载器
https://github.com/proxyee-down-org/proxyee-down

