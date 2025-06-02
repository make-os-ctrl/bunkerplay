
# Démarrer le service Apache2
systemctl start apache2

# Veiller à ce que le service reste commencé après le démarrage
tail -f /var/log/apache2/error.log

systemctl enable apache2
