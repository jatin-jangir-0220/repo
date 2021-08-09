FROM ubuntu:latest

RUN apt-get update -y

RUN docker run --name mynginx1 -p 80:80 -d nginx

COPY index.html /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
