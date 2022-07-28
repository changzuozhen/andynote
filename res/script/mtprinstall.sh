#!/bin/bash



mtpr_V=`mtpr --version`



echo "开始安装node 4.4.6"

    nvm install 4.4.6

    echo "node安装完成"

    set -e

    nvm use 4.4.6

    nvm alias default v4.4.6

    set +e

    echo "使用node"echo "开始安装node 4.4.6"

    nvm install 4.4.6

    echo "node安装完成"

    set -e

    nvm use 4.4.6

    nvm alias default v4.4.6

    set +e

    echo "使用node"



if [ ! -n "$mtpr_V" ]; then

    echo "没有安装mtpr，开始安装mtpr1.1.22 若安装失败可以手动安装，使用命令npm install -g @otcfe/mtpr --registry=http://r.npm.sankuai.com"

    npm install -g @otcfe/mtpr --registry=http://r.npm.sankuai.com

    mtpr -h

    echo "安装mtpr完成，开始使用吧！如果提示找不到命令mtpr可以重新打开命令窗口"

    echo "如果还是找不到命令可以将 source ~/.nvm/nvm.sh 添加到shell启动自动执行文件1.1.22"

else

    echo "已安装mtpr，开始升级mtpr1.1.22 若安装失败可以手动安装，使用命令npm install -g @otcfe/mtpr --registry=http://r.npm.sankuai.com"

    npm update -g @otcfe/mtpr --registry=http://r.npm.sankuai.com

    mtpr -h

    echo "升级mtpr完成，开始使用吧！如果提示找不到命令mtpr可以重新打开命令窗口"

    echo "如果还是找不到命令可以将 source ~/.nvm/nvm.sh 添加到shell启动自动执行文件1.1.22"

fi