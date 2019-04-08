#!/bin/bash

# create homes
mkdir /SOA/home
chmod a+rx /SOA/home

echo add users and groups
groupadd -g 500 oinstall
groupadd -g 501 dba
useradd -g oinstall -G dba -u 500 -m -d /SOA/home/oracle -s /bin/bash oracle

echo oracle password ?
passwd oracle

# directory for oracle user
chown -R oracle /CFL
chown -R oracle /SOA

cp limits.conf /etc/security/
