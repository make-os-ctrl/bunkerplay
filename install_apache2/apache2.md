
> Services need to run on all interfaces (like 0.0.0.0) and not just localhost.
<br>
> Services need to be accessible via HTTP and **not** HTTPS.

Run apache2 on port 80 using Docker:

```
docker run -p 80:80 apache2:alpine
```{{exec}}


Or run it in background:

```
docker run -d -p 80:80 nginx:alpine
```{{exec}}

Now access Nginx using this link:

[ACCESS apache2]({{TRAFFIC_HOST1_80}})

It's also possible to access ports using the top-right navigation in the terminal.
Or we can display the link to that page:

[ACCESS PORTS]({{TRAFFIC_SELECTOR}})

It's also possible to generate access URLs in bash (foreground or background scripts) like this:

```
sed 's/PORT/80/g' /etc/killercoda/host
```{{exec}}
