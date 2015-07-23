# Nginx with HTTPS

Based from official Nginx container, generates a self-signed certificate and updates config to use SSL.

Intended as a simple base container using Nginx as a HTTPS proxy for development.

## Build

```
docker build -t stevenalexander/nginx-https .
```

## Run

```
docker run --name nginx-https -p 80:80 -p 443:443 -v /index.html:/usr/share/nginx/html/index.html:ro -it --rm stevenalexander/nginx-https
```
