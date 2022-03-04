FROM gcr.io/gcr-repo-repo/test:d0b40e3d-92-185

RUN apt-get update -y

RUN apt-get install curl -y
RUN apt-get install nginx -y

COPY index.html /var/www/html

EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]
