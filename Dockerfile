FROM gcr.io/gcr-repo-repo/test:d09c6080-92-183

RUN apt-get update -y

RUN apt-get install curl -y
RUN apt-get install nginx -y

COPY index.html /var/www/html

EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]
