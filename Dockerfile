FROM us-central1-docker.pkg.dev/gcr-repo-repo/quickstart-docker-repo/test:7ed6fb00-94-188

RUN apt-get update -y

RUN apt-get install curl -y
RUN apt-get install nginx -y

COPY index.html /var/www/html

EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]
