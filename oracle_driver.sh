#!/bin/sh

mkdir -p /opt/oracle
cd /opt/oracle
wget -c https://download.oracle.com/otn_software/linux/instantclient/19600/instantclient-basic-linux.x64-19.6.0.0.0dbru.zip -O oracle-client.zip
unzip oracle-client.zip
apt update
apt install libaio1
sh -c "echo /opt/oracle/instantclient_19_6 > /etc/ld.so.conf.d/oracle-instantclient.conf"
ldconfig
