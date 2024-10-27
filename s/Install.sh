#!/bin/bash
systemctl stop firewalld.service
systemctl disable firewalld.service

mkdir /root/s
cd /root/s
wget -O rathole https://github.com/trg58518/rathole/raw/refs/heads/main/s/rathole
wget -O s.toml https://github.com/trg58518/rathole/raw/refs/heads/main/s/s.toml
wget -O /etc/systemd/system/rathole.service https://github.com/trg58518/rathole/raw/refs/heads/main/s/rathole.service
chmod -R 777 /root/s/
chmod 777 /etc/systemd/system/rathole.service

sudo systemctl start rathole
sudo systemctl enable rathole
