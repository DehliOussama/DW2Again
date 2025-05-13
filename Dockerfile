FROM ubuntu

run apt update
run apt install apache2 -y

COPY html /var/www/html
RUN date -u > /var/www/html/buildtime.txt

EXPOSE 80


CMD ["apachectl", "-D", "FOREGROUND"]
