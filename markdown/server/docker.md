
# docker
* [如何在阿里云上部署私有的Docker Registry](https://zhuanlan.zhihu.com/p/20025498)
* [docker_practice.pdf](https://legacy.gitbook.com/book/yeasy/docker_practice/details)
* [docker_practice gitbook](https://github.com/yeasy/docker_practicesss)

```bash
# mirror
# https://registry.docker-cn.com
brew cask install docker
docker info
docker --version
docker-compose --version
docker-machine --version

docker run -d -p 80:80 --name webserver nginx
# http://localhost/
exit
docker diff webserver
docker container ls

docker exec -it webserver bash
echo '<h1>Hello, Docker!</h1>' > /usr/share/nginx/html/index.html
exit
docker diff webserver
docker image ls nginx
docker commit --author "Tao Wang <twang2218@gmail.com>" --message "修改了默认网页" webserver nginx:v2
docker image ls nginx
docker history nginx:v2
docker run --name web2 -d -p 81:80 nginx:v2

docker stop webserver
docker rm webserver


docker pull ubuntu:18.04
docker run -it --rm ubuntu:18.04 bash
cat /etc/os-release
exit

docker image ls
docker image ls -a
docker image ls ubuntu
docker image prune

docker image ls -q
docker image ls --format "table {{.ID}}\t{{.Repository}}\t{{.Tag}}"
docker image ls --digests

docker system df

# docker image rm $(docker image ls -q redis)
# docker image rm $(docker image ls -q -f before=mongo:3.2)


$ mkdir mynginx
$ cd mynginx
$ touch Dockerfile
FROM nginx
RUN echo '<h1>Hello, Docker!</h1>' > /usr/share/nginx/html/index.html

docker build -f ./Dockerfile -t nginx:v3 .

docker run -dit ubuntu
docker container ls
docker attach

docker-compose --version


docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=mysecretpassword -d mysql

docker run --name mongo -d mongo

export WORDPRESS_DB_PASSWORD="mysecretpassword"
docker run --name some-wordpress --link some-mysql:mysql -d wordpress
```
