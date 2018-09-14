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