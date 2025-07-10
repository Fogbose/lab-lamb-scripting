#!/bin/bash
mysql -u root <<EOF
CREATE DATABASE lampdb;
CREATE USER 'lampuser'@'%' IDENTIFIED BY 'lampuser';
GRANT ALL PRIVILEGES ON lampdb.* TO 'lampuser'@'%';
FLUSH PRIVILEGES;
EOF

sudo firewall-cmd --permanent --zone=public --add-port=3306/tcp
sudo firefall-cmd --reload
