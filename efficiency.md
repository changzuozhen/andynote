# terminal 文件数

https://www.cnet.com/news/terminal-fun-options-for-printing-folder-and-subfolder-contents/

## List all subfolders with formatted output (go ahead, copy and paste it to the Terminal)

```
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
```

## Installing and using "tree"


http://mama.indstate.edu/users/ice/tree/

解压

make

mv tree ~/bin/