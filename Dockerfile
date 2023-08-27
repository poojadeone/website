FROM ubuntu

RUN apt update

RUN apt install apache2 -y

RUN rm /var/www/html/*.html

ADD . /var/www/html

ENTRYPOINT apachectl -D FOREGROUND
