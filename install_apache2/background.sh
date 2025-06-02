#!/bin/bash
set -x
# Installer Apache2
apt-get install -y apache2

systemctl start apache2
systemctl enable apache2
