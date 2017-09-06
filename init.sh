#!/bin/bash
mkdir -p /data/mongodb/conf && mkdir -p /data/mongodb/data
cp /root/mongodb.conf /data/mongodb/conf/mongodb.conf
source /etc/profile && mongod -f /data/mongodb/conf/mongodb.conf & ; mongorestore -h localhost -d leanote --dir /usr/local/leanote/mongodb_backup/leanote_install_data/

hash=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-64};echo;); \
    sed -i "s/app.secret=.*$/app.secret=$hash #/" /usr/local/leanote/conf/app.conf;
