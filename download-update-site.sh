#!/bin/sh

# Download lastest files of tryd plugins eclipse update site

rm -rf /master.zip
wget -P / https://github.com/klause/eclipse-update-site/archive/master.zip
if [ $? -eq 0 ]; then
    rm -rf /static/*
    unzip /master.zip "eclipse-update-site-master/kan-update-site/*" -d /
    mv /eclipse-update-site-master/kan-update-site /static/
    rm -rf /eclipse-update-site-master
fi