FROM acastellano/archonweb:latest
MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>
RUN apt-get update -y && apt-get upgrade -y
EXPOSE 80
VOLUME /etc/apache2/sites-enables
VOLUME /var/www
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
