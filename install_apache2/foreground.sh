docker run -d --name bunkerweb-aio -v bw-storage:/data -p 7000:7000/tcp -p 443:8443/tcp -p 443:8443/udp -e ADMIN_USERNAME=admin -e ADMIN_PASSWORD=P@ssw0rd123! -e CHECK_PRIVATE_IP=no  bunkerity/bunkerweb-all-in-one:1.6.2-rc2
systemctl start docker
docker ps

apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: ui-bunkerweb
  # Replace with your namespace of BW if needed
  namespace: bunkerweb
  annotations:
    # HTTPS is mandatory for web UI even if traffic is internal
    nginx.ingress.kubernetes.io/backend-protocol: "HTTPS"
    # We must set SNI so BW can serve the right vhost
    # Replace with your domain
    nginx.ingress.kubernetes.io/proxy-ssl-name: "bunkerweb.example.com"
    nginx.ingress.kubernetes.io/proxy-ssl-server-name: "on"
spec:
  # Only served by nginx controller and not BW
  ingressClassName: nginx
  # Uncomment and edit if you want to use your own certificate
  # tls:
  # - hosts:
  #   - bunkerweb.example.com
  #   secretName: tls-secret
  rules:
  # Replace with your domain
  - host: bunkerweb.example.com
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            # Created by Helm chart
            name: bunkerweb-external
            port:
              # Using HTTPS port is mandatory for UI
              number: 443
