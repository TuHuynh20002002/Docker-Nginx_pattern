#!/bin/bash


apt update -y
apt install -y build-essential curl 
apt install -y libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev


cd /root/ && curl -OL https://nginx.org/download/nginx-1.26.2.tar.gz 
tar -xvzf nginx-1.26.2.tar.gz


cd /root/nginx-1.26.2
./configure  \
  --sbin-path=/usr/bin/nginx \
  --conf-path=/etc/nginx/nginx.conf \
  --pid-path=/var/run/nginx/pid \
  --error-log-path=/var/log/nginx/error.log \
  --http-log-path=/var/log/nginx/access.log 
make install


nginx
nginx -V
sleep infinity