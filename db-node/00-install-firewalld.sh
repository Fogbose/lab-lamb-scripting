#!/bin/bash
sudo yum install -y firewalld
sudo systemctl start firewalld
sudo systemctl enable firewalld
