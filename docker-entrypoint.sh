#!/bin/sh

trap "echo 'reloading haproxy cfg';haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg && haproxy -f /usr/local/etc/haproxy/haproxy.cfg -p /run/haproxy.pid -sf \$(cat /run/haproxy.pid)" 1

haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg || exit 1

haproxy -p /run/haproxy.pid -f /usr/local/etc/haproxy/haproxy.cfg

while true;do
 sleep 365d &
 wait
 pkill sleep
done
