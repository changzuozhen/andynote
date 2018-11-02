# 
https://facebook.github.io/react-native/

https://github.com/fbsamples/f8app
https://makeitopen.com/

* https://facebook.github.io/react-native/docs/more-resources
    * https://nuclide.io/
    * https://github.com/atom/atom
    * https://yogalayout.com/



https://redux.js.org/


```
npm install
npm start -- --reset-cache
react-native run-android

react-native init AwesomeProject
cd AwesomeProject
react-native run-android
```


[Redux 中文文档](https://cn.redux.js.org/)
    * [Getting Started with Redux](https://egghead.io/courses/getting-started-with-redux)


[可能是目前最用心收集的 React Native 优秀开源项目大全，公众号【aMarno】](https://github.com/MarnoDev/react-native-open-project)


[设置npm的registry](https://www.cnblogs.com/sghy/p/6840925.html)

```shell
1.原npm地址

npm config set registry https://registry.npmjs.org 
2.设置国内镜像

a.通过config命令

npm config set registry https://registry.npm.taobao.org 
npm info underscore （如果上面配置正确这个命令会有字符串response）
b.命令行指定

npm --registry https://registry.npm.taobao.org info underscore 
c.编辑 ~/.npmrc 加入下面内容

registry = https://registry.npm.taobao.org
3.使用nrm管理registry地址

a.下载nrm

npm install -g nrm
b.添加registry地址

nrm add npm https://registry.npmjs.org
nrm add taobao https://registry.npm.taobao.org
c.切换npm registry地址

nrm use taobao
nrm use npm
```

proxy setup

```
subl ~/.npmrc

http_proxy=http://127.0.0.1:1087
export https_proxy=http://127.0.0.1:1087


subl ~/.bashrc
subl ~/.bash_profile
subl ~/.zshrc

export HTTP_PROXY="http://127.0.0.1:1087"
export http_proxy="http://127.0.0.1:1087"
export ALL_PROXY="http://127.0.0.1:1087"
export all_proxy="http://127.0.0.1:1087"
export HTTPS_PROXY="http://127.0.0.1:1087"
export https_proxy="http://127.0.0.1:1087"
```

https://egghead.io/lessons/javascript-redux-the-middleware-chain


# snip

```
which node | pbcopy
```


React.js 小书

http://huziketang.mangojuice.top/books/react/

深度剖析：如何实现一个 Virtual DOM 算法
https://github.com/livoras/blog/issues/13


# TypeScript
https://www.tslang.cn/docs/home.html

https://github.com/Microsoft/TypeScript-React-Starter#typescript-react-starter
```
npm install -g create-react-app
create-react-app my-app --scripts-version=react-scripts-ts
```

https://www.tslang.cn/samples/index.html

# efficiency

https://github.com/creationix/nvm/blob/master/README.md

