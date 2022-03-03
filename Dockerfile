FROM quay.io/devtron/test:2641fa5b-15-179

RUN apt-get update -y

RUN apt-get install curl -y
RUN apt-get install nginx -y

COPY index.html /var/www/html

EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]
