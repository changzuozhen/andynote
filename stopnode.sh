#!/usr/bin/env bash
ps
ps | grep node | awk '{print $1}' | xargs kill -9
echo after kill
ps