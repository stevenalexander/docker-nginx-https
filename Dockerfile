FROM nginx:latest

MAINTAINER Steven Alexander "steven.william.alexander@googlemail.com"

COPY default.conf /etc/nginx/conf.d/default.conf

# Replace example generated key with your own from volume
RUN mkdir /etc/nginx/ssl && \
    openssl req -nodes -new -x509 -keyout /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt -subj '/CN=example.com/O=Example Company Name LTD./C=UK'
