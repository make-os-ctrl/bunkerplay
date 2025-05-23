#!/bin/bash
echo "mise à jour de la liste des paquets"
sudo apt update
echo "installation d'Apache2"
sudo apt install - y apache2
echo "Activation d'Apache2 pour qu'il démarre automatiquement"
sudo systemctl enable apache2
echo "démarrage du service Apache2"
sudo systemctl start apache2
echo "Verification du statut du service Apache2"
sudo systemctl status apache2
echo "installation complète d'Apache2 sur Debian12
