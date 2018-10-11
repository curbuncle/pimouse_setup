#!/bin/bash -xve

exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

# デバイスファイルの作成用に待つ
sleep 1
chmod 666 /dev/rt*

# 安全のためモータの電源を切っておく
echo 0 > /dev/rtmotoren0

