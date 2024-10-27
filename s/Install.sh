#!/bin/bash
mkdir /s
cd /s
wget -O rathole https://github.com/trg58518/MTP/raw/main/gost
wget -O s.toml https://github.com/trg58518/MTP/raw/main/gost
wget -O /etc/systemd/system/rathole.service https://github.com/trg58518/MTP/raw/main/gost
