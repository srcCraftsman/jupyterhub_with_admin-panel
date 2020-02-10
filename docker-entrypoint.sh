#! /bin/bash

echo -e "$ROOTPASSWD\n$ROOTPASSWD" | passwd

service ssh status
service ssh start
service ssh status

echo -e "\033[37;1;41m creating admin user... \033[0m"
useradd $ADMUSER --create-home && \
    echo -e "$ADMPASS\n$ADMPASS" | passwd $ADMUSER
    sed -e 's/uzver/'$ADMUSER'/g' -i /jupyterhub_config.py
echo -e "\033[32;4m admin user named '$ADMUSER' successfully created \033[0m"

echo -e "\033[37;1;41m STARTING Jupyterhub-server... \033[0m"

jupyterhub