
# Démarrer le service Apache2
service apache2 start

# Veiller à ce que le service reste commencé après le démarrage
tail -f /var/log/apache2/error.log
