# [Git-工具-子模块](https://git-scm.com/book/zh/v2/Git-%E5%B7%A5%E5%85%B7-%E5%AD%90%E6%A8%A1%E5%9D%97)
```sh
# 自动初始化并更新仓库中的每一个子模块。
git clone --recursive https://github.com*****

git submodule init
git submodule update

# 如果不用 -f .gitmodules 选项，那么它只会为你做修改。
# 但是在仓库中保留跟踪信息更有意义一些，因为其他人也可以得到同样的效果。
$ git config -f .gitmodules submodule.DbConnector.branch stable

$ git submodule update --remote
```

SubModule
1. git submodule update --init
2. cd soda-script-android
3. git checkout master
4. git pull


| 添加子模块 | git submodule add https://github.com/maonx/vimwiki-assets.git assets |  |
| --- | --- | --- |
| 查看子模块 | git submodule  |  |
| 更新子模块 | git submodule update | 更新项目内子模块到最新版本 |
| 更新子模块 | git submodule update --remote | 更新子模块为远程项目的最新版本 |
| 克隆包含子模块的项目 |  <div>git clone https://github.com/maonx/vimwiki-assets.git assets</div><div>git submodule</div><div>git submodule init</div><div>git submodule update</div> |  <div>克隆父项目</div><div>查看子模块</div><div>初始化子模块</div><div>更新子模块</div> |
| 递归克隆整个项目 |  git clone https://github.com/maonx/vimwiki-assets.git assets --recursive<span class="Apple-tab-span" style="white-space:pre"></span> |  |
| 删除子模块 |  <div>1\. $ git rm --cached assets</div><div>$ rm -rf assets</div><div>2. </div><div>3. </div><div>4\. rm -rf .git/modules/assets</div> |  <div>1\. 删除子模块文件夹</div><div>2\. 删除.gitmodules文件中相关子模块信息</div><div>3\. 删除.git/config中的相关子模块信息</div><div>4\. 删除.git文件夹中的相关子模块文件</div> |

[Git submodule 子模块的管理和使用](https://www.jianshu.com/p/9000cd49822c)


# Configs
127.0.0.1, localhost, 192.168.0.0/16, 10.0.0.0/8,*.xiaojukeji.com,*.didichuxing.com


git config --global http.proxy http://127.0.0.1:1087
git config --global https.proxy https://127.0.0.1:1087


git config --global --unset http.proxy
git config --global --unset https.proxy


```bash

//Locating an existing SSH key pair
//Windows Command Prompt:
//type %userprofile%\.ssh\id_rsa.pub
//Git Bash on Windows / GNU/Linux / macOS / PowerShell:
cat ~/.ssh/id_rsa.pub

//Generating a new SSH key pair
ssh-keygen -t rsa -C "your.email@example.com" -b 4096

//macOS:
pbcopy < ~/.ssh/id_rsa.pub
//GNU/Linux (requires the xclip package):
xclip -sel clip < ~/.ssh/id_rsa.pub
//Windows Command Line:
type %userprofile%\.ssh\id_rsa.pub | clip
//Git Bash on Windows / Windows PowerShell:
cat ~/.ssh/id_rsa.pub | clip

```