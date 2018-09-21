#!/bin/bash
ps | grep node | awk '{print $1}' | xargs kill -9
echo after kill
ps

ps | grep moco | awk '{print $1}' | xargs kill -9
echo after kill
ps