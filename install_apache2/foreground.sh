docker run  -d --name bunkerweb-aio -v bw-storage:/data -p 80:7000/tcp -p 443:8443/tcp -p 443:8443/udp  -e ADMIN_USERNAME=admin -e ADMIN_PASSWORD=P@ssw0rd123! -e CHECK_PRIVATE_IP=no  bunkerity/bunkerweb-all-in-one:1.6.2-rc2 


