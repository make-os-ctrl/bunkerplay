systemctl start docker
docker ps
docker run -d --name bunkerweb-aio -v bw-storage:/data -p 7000:7000/tcp -p 443:8443/tcp -p 443:8443/udp bunkerity/bunkerweb-all-in-one:1.6.2-rc2
