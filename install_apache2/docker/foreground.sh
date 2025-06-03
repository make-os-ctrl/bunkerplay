   # Commande pour démarrer le service Docker
   systemctl start docker

   # Vérifier que Docker fonctionne
   docker ps
docker run -d --name bunkerweb-aio -v bw-storage:/data -p 80:8080/tcp -p 443:8443/tcp -p 443:8443/udp bunkerity/bunkerweb-all-in-one:1.6.2-rc2
