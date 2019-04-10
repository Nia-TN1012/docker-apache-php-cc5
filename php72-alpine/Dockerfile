#
# Apache2 and PHP 7.2 for Concrete5
# Alpine Linux 3.8 + Apache2 + PHP7.2
#

FROM alpine:3.8

LABEL maintainer "Nia Tomonaka (@nia_tn1012)"

# Update packages and installs;
# * apache2
# * php7
#   * php7-pdo_mysql         (MySQL)
#   * php7-xml               (XML)
#   * php7-mbstring          (Mbstring)
#   * php7-curl              (cURL)
#   * php7-zip               (ZipArchive)
#   * php7-gd                (Graphics)
#
# Note: For Alpine Linux, the following additional modules are required.
#       php7-apache2, php7-simplexml, php7-dom, php7-ctype, php7-json,
#       php7-fileinfo, php7-tokenizer, php7-openssl, php7-iconv, php7-session
RUN apk add --update --no-cache \
        apache2 \
        php7 \
            php7-pdo_mysql \
            php7-xml \
            php7-mbstring \
            php7-curl \
            php7-zip \
            php7-gd \
                php7-apache2 \
                php7-simplexml \
                php7-dom \
                php7-ctype \
                php7-json \
                php7-fileinfo \
                php7-tokenizer \
                php7-openssl \
                php7-iconv \
                php7-session \
        curl \
        tzdata

# Set enviorment variables.
ENV APACHE_RUN_USER     www-data
ENV APACHE_RUN_GROUP    www-data

# Add Apache and PHP configration for Concrete5.
ADD php.ini /etc/php7/php.ini
ADD concrete5.conf /etc/apache2/conf.d/concrete5.conf

# Create 'www-data' user and group.
RUN adduser -u 82 -D -S -G ${APACHE_RUN_GROUP} ${APACHE_RUN_USER} \
    && mkdir /var/www/html && mkdir /run/apache2 && mkdir /usr/src \
    # Backup Apache and PHP configration files.
    && mkdir -p /tmp/conf_backup \
    && cp /etc/php7/php.ini /tmp/conf_backup/ \
    && cp /etc/apache2/conf.d/concrete5.conf /tmp/conf_backup/ \
    && echo "cp -i /tmp/conf_backup/php.ini /etc/php7/" > /tmp/conf_backup/restore_conf.sh \
    && echo "cp -i /tmp/conf_backup/concrete5.conf /etc//etc/apache2/conf.d/" >> /tmp/conf_backup/restore_conf.sh \
    && chmod +x /tmp/conf_backup/restore_conf.sh

WORKDIR /var/www/html

# Set entrypoint.
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]

# Expose 80 (HTTP) ports.
EXPOSE 80