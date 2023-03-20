
FROM debian:buster
RUN apt update
RUN apt install nginx -y
RUN mkdir -p /etc/nginx/ssl
RUN apt install OpenSSL -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout/etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/0=42/CN=login.42.fr/UID=login"
#cree la cle et le certificat TSL, va se faire automatiquement 
RUN mkdir -p /var/run/nginx
#cree un dossier contentant les fichiers de config de NGINX
COPY conf/nginx.conf /etc/nginx/nginx.conf  
#le copy va surement devoir etre change ? 
RUN chmod 755 /var/www/html
RUN chown -R www-data /var/www/html
CMD [ "nginx", "-g", "daemon off;"]