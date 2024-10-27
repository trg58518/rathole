#!/bin/bash
systemctl stop firewalld.service
systemctl disable firewalld.service

mkdir /usr/s
cd /usr/s
curl -o rathole https://github.com/trg58518/rathole/raw/refs/heads/main/s/rathole
curl -o s.toml https://github.com/trg58518/rathole/raw/refs/heads/main/s/s.toml
curl -o /etc/systemd/system/rathole.service https://github.com/trg58518/rathole/raw/refs/heads/main/s/rathole.service
chmod -R 777 /usr/s
chmod 777 /etc/systemd/system/rathole.service

systemctl daemon-reload
systemctl start rathole
systemctl enable rathole
