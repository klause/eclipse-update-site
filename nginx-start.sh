#!/bin/sh

sed -i 's/listen[ \t]*80;/listen '"$PORT"';/g' /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'