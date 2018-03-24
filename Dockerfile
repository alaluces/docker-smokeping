FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
        smokeping \
        apache2 \
        sendmail \
        supervisor
RUN a2enmod cgi
RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/run/smokeping /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY General /etc/smokeping/config.d/General
COPY Targets /etc/smokeping/config.d/Targets
CMD ["/usr/bin/supervisord"]
