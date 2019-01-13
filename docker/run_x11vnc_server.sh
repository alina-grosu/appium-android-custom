#!/bin/bash

./entry_point.sh&

#wait for Xvfb to start
until pids=$(pidof Xvfb)
do
    sleep 1
done

echo Trying to start vnc11server > foq.txt
x11vnc -forever -display :99 -auth /tmp/xvfb-run.*/Xauthority > /root/foo.txt