#!/usr/local/bin/python
# coding=utf-8
import commands
import sys


def excuteCmd(cmd):
    (status, output) = commands.getstatusoutput(cmd)
    print cmd ,status, output

def parseArgument():
    if (len(sys.argv) < 2):
        excuteCmd('git config --global --unset http.proxy')
        excuteCmd('git config --global --unset https.proxy')
        return

    if (sys.argv[1] == "dev"):
        excuteCmd('git config --global http.proxy http://dev-proxy.oa.com:8080')
        excuteCmd(' git config --global https.proxy https://dev-proxy.oa.com:8080')
    else:
        excuteCmd('git config --global --unset http.proxy')
        excuteCmd('git config --global --unset https.proxy')

excuteCmd('pwd')
parseArgument()