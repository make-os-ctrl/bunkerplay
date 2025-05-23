#!/bin/bash

# Mettez à jour la liste des paquets
echo "Mise à jour de la liste des paquets..."
sudo apt update

# Installez Apache2
echo "Installation d'Apache2..."
sudo apt install -y apache2

# Activez Apache2 pour qu'il démarre au démarrage du système
echo "Activation d'Apache2 pour qu'il démarre automatiquement..."
sudo systemctl enable apache2

# Démarrez le service Apache2 immédiatement
echo "Démarrage du service Apache2..."
sudo systemctl start apache2

# Vérifiez le statut du service Apache2
echo "Vérification du statut du service Apache2..."
sudo systemctl status apache2

echo "Installation complète d'Apache2 sur Ubuntu."
