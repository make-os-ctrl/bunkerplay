#!/bin/bash
set -x

# Mettre à jour la liste des paquets
apt-get update

# Installer Apache2
apt-get install -y apache2

systemctl enable apache2
