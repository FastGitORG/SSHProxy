#!/bin/bash
#Author: KevinZonda
#Date: 18/06/2021
#OS: Debian 10 x64

sudo -s
apt install socat -y

echo '[Unit]
Description=Forwards GitHub

[Service]
ExecStart=socat TCP-LISTEN:22,fork TCP:github.com:22

[Install]
WantedBy=multi-user.target' > /etc/systemd/system/socat.service

systemctl daemon-reload

systemctl start socat

systemctl enable socat
