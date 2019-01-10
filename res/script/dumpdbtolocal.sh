#!/usr/bin/env bash
dumpdb() {
    if [ $# -eq 1 ]; then
        echo "************"
        rm -rf dump
        echo "input your mongodb ip address"
        mongodump -h $@
        ps -e | grep mongo | awk '{print $1}' | xargs kill -9
        rm -rf localdb
        mkdir localdb
        mongod --dbpath localdb &
        mongorestore dump
        rm -rf dump
    else
        echo 参数记得带上mongo数据库的IP地址（一个IP地址）
    fi
}

dumpdb $@
