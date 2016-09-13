FROM acastellano/archonweb:v2
MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>
EXPOSE 80
VOLUME /etc/apache2/sites-enabled
VOLUME /var/www
ADD apache2_sites_enabled /etc/apache2/sites-enabled
ADD apache2_www /var/www
RUN apt-get update -y && apt-get upgrade -y
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
