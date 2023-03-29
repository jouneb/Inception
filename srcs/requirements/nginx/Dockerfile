
FROM debian:buster
RUN apt update -y
RUN apt upgrade -y
RUN apt install nginx -y
RUN mkdir -p /etc/nginx/ssl
RUN apt install openssl -y
#installe l'outil pr la gestion et la creation de certificat TSL-SSL
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/0=42/CN=jbouyer.42.fr/UID=jbouyer"
#cree la cle et le certificat TSL, va se faire automatiquement 
#RUN mkdir -p /var/run/nginx
#cree un dossier contentant les fichiers de config de NGINX
COPY conf/config /etc/nginx/sites-available 
CMD [ "nginx", "-g", "daemon off;"]
#ca lance nginx