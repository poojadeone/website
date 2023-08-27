FROM ubuntu

RUN apt update

RUN apt install apache2 -y

ADD . /www/var/html

ENTRYPOINT apachectl -D FOREGROUND
