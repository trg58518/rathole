#!/bin/bash
mkdir /s
cd /s
wget -O rathole https://github.com/trg58518/rathole/raw/refs/heads/main/s/rathole
wget -O s.toml https://github.com/trg58518/rathole/raw/refs/heads/main/s/s.toml
wget -O /etc/systemd/system/rathole.service https://github.com/trg58518/rathole/raw/refs/heads/main/s/rathole.service
