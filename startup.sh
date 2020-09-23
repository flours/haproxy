#!/bin/bash
/docker-entrypoint.sh haproxy -f /usr/local/etc/haproxy/haproxy.cfg &
pid=$!

while true
do
  sleep 1d
  kill -1 $pid
done


