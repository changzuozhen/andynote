#!/usr/local/bin/python
# coding=utf-8
import os
import subprocess
import sys
import re

__author__ = 'benny'

MANU_XIAOMI = "xiaomi"
MANU_ALPS = "alps"


def getdevices():
    lines = os.popen('adb devices').readlines()
    found = False
    ret = []
    for line in lines:
        line = line.strip()
        if found:
            if line:
                ret.append(line.split('\t')[0])
        elif 'List of devices attached' == line:
            found = True

    return ret


def get_right_value(value):
    return value.split('=')[1]


def find(collection, target):
    for ele in collection:
        if target in ele:
            return ele.strip()


def execute(cmd):
    return os.popen(cmd).readlines()


def checkInstall(args, device):
    if len(args) < 3:
        return

    if args[0] == 'install' and args[1].startswith("-") and "f" in args[1]:
        print "Try to retrieve the package name ..."
        lines = os.popen('aapt dump badging %s | grep package:\ name' % args[2]).readlines()
        # package: name='com.tencent.wecarsyncassistant' versionCode='10001' versionName='1.0.1' platformBuildVersionName='5.0.1-1624448'
        for line in lines:
            if line:
                # print line
                result = re.match(r"package:\s*name='(.*)'\s*versionCode='(\d*)'\s*versionName='(.*?)'.*", line, )
                if result:
                    package = result.group(1)
                    versionCode = result.group(2)
                    versionName = result.group(3)

                    # print package, versionName, versionCode
                    print "Success. Package name is \"%s\". \n" % package
                    print "Try to uninstall \"%s\" ..." % package

                    if "k" in args[1]:
                        print "The data and cache directories will be preserved."
                        uninstall_cmd = 'adb -s %s shell pm uninstall -k %s' % (device, package)
                    else:
                        uninstall_cmd = 'adb -s %s uninstall %s' % (device, package)
                    outputs = os.popen(uninstall_cmd).readlines()
                    for output in outputs:
                        print output
                else:
                    print "Error occurred while retrieving package name."

                break


def getModel(device):
    build_prop_str = 'adb -s %s shell cat /system/build.prop' % device
    result_manufacturer_str = find(execute(build_prop_str), "ro.product.manufacturer")
    manufacturer = get_right_value(result_manufacturer_str).lower()
    if manufacturer == MANU_ALPS:
        manufacturer = get_right_value(find(execute(build_prop_str), "ro.product.brand="))
        manufacturer = manufacturer.lower()

    # 获取型号
    if MANU_XIAOMI == manufacturer:
        ro_build_product = get_right_value(find(execute(build_prop_str), "ro.build.product="))
        if 'HM' in ro_build_product:
            model = "HONGMI"
        else:
            model = "XIAOMI"
    else:
        model = get_right_value(find(execute(build_prop_str), "ro.product.model="))

    return model


def restartServer(args):
    if args[0] == 'restart':
        subprocess.call(["adb", "kill-server"])
        subprocess.call(["adb", "start-server"])
        return True
    return False

devices = getdevices()
chosenDevice = devices[0]
if len(devices) > 1:
    for i in range(0, len(devices)):
        try:
            model = getModel(devices[i])
        except :
            model = devices[i]
        print ("[%d] %s" % (i, model))
    chosen = raw_input("Choose a device to execute the command: [default 0]: ")
    if chosen:
        index = int(chosen)
        chosenDevice = devices[index]

deviceChosen = "-s %s " % chosenDevice
if len(sys.argv) > 1:
    package = sys.argv[1]
    lines = os.popen('adb %s shell ps | grep %s | cut -c10-15' % (deviceChosen, package)).readlines()
    pid = ""
    for line in lines:
        if line:
            pid = line.strip('\n ')
            break

    if pid:
        f = os.popen('adb %s logcat -d -v threadtime' % deviceChosen)
        while(True):
            line = f.readline()
            # print line,
            if line:
                if line.startswith('------'):
                    print line,
                elif re.match(r"\d{2}-\d{2}\s+\d{2}:\d{2}:\d{2}\.\d{3}\s+%s\s+\d+\s+\w\s+.*" % pid, line):
                    print line,
            else:
                break
        f.close()
    else:
        print "%s is not Running." % package

    # cmd = "adb %s logcat | grep `adb %s shell ps | grep %s | cut -c10-15`"
    # cmds = cmd % (deviceChosen, deviceChosen, package)
else:
    cmds = "adb %s logcat -d -v threadtime" % deviceChosen
    print cmds
    subprocess.call(cmds, shell=True)
