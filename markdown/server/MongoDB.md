# MongoDB
* [安装](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/)
* [下载](https://www.mongodb.com/download-center?jmp=docs#production)
* [docs](https://docs.mongodb.com)
    * [Structure your Data for MongoDB](https://docs.mongodb.com/guides/server/introduction/)
    
[update all the node dependencies to their latest version](https://flaviocopes.com/update-npm-dependencies/)
```
npm install -g npm-check-updates
ncu -u
npm update
```

```bash
tar -zxvf mongodb-osx-ssl-x86_64-4.0.4.tgz
export PATH=<mongodb-install-directory>/bin:$PATH
mkdir -p /data/db
mongod --dbpath <path to data directory>

docker exec -it *** bash
```


https://linuxize.com/post/how-to-install-mongodb-on-centos-7/
```bash
vi /etc/yum.repos.d/mongodb-org.repo

[mongodb-org-4.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc

sudo yum install mongodb-org
```
