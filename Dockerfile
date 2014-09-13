from tianon/apache2

MAINTAINER Mark Kempster <mark@kempster.org>

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip


ADD https://github.com/wordnik/swagger-ui/archive/v2.0.22.zip /var/tmp/
RUN unzip -d /var/tmp/work /var/tmp/v2.0.22.zip
RUN mv /var/tmp/work/swagger-ui-2.0.22/dist/* /var/www/html
RUN rm -rf /var/tmp/*
