FROM ubuntu:16.04
RUN apt-get update && apt-get install -y apache2 php7.0 libapache2-mod-php7.0
ENV APACHE_RUN_USER=www-data APACHE_RUN_GROUP=www-data APACHE_PID_FILE=/var/run/apache2/apache2.pid APACHE_RUN_DIR=/var/run/apache2 APACHE_LOCK_DIR=/var/lock/apache2 APACHE_LOG_DIR=/var/log/apache2
CMD /usr/sbin/apache2 -DFOREGROUND
EXPOSE 80
RUN rm /var/www/html/index.html
COPY src/ /var/www/html/

