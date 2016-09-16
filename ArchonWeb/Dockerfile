FROM acastellano/archonweb:latest
MAINTAINER Álvaro Castellano Vela <alvaro.castellano.vela@gmail.com>
RUN apt-get update -y
RUN apt-get upgrade -y
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
