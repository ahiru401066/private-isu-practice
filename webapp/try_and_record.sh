#!/bin/bash
set -e

# 時刻
T=$(date +"%Y%m%d_%H%M%S")

# ログ一式
mkdir -p logs/$T/


echo "== measurement start !=="

ab -c 1 -t 30 http://localhost/

echo "== measurement finish !=="

cp -a ./logs/current/* ./logs/$T/
rm -f ./logs/current/nginx/* ./logs/current/mysql/*
echo "== end! =="