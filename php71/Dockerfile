#
# Apache2 and PHP 7.1 for Concrete5
# Debian stretch-slim + Apache2 + PHP7.1
#

FROM debian:stretch-slim

LABEL maintainer "Nia Tomonaka (@nia_tn1012)"

# Update packages and installs;
# * apache2
# * php7.1
#   * php7.1-mysql     (MySQL)
#   * php7.1-xml       (DOM, SimpleXML)
#   * php7.1-mbstring  (Mbstring)
#   * php7.1-curl      (cURL)
#   * php7.1-mcrypt    (Mcrypt)
#   * php7.1-zip       (ZipArchive)
#   * php7.1-gd        (Graphics)
RUN apt-get update \
    # https://tecadmin.net/install-php-debian-9-stretch/
    && apt-get install -y --no-install-recommends ca-certificates apt-transport-https wget gnupg \
    && wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add - \
    && echo "deb https://packages.sury.org/php/ stretch main" | tee /etc/apt/sources.list.d/php.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        apache2 \
        php7.1 \
            php7.1-mysql \
            php7.1-xml \
            php7.1-mbstring \
            php7.1-curl \
            php7.1-mcrypt \
            php7.1-zip \
            php7.1-gd \
        curl \
        unzip \
    && rm -rf /var/lib/apt/lists/*

# Set enviorment variables.
ENV APACHE_RUN_USER     www-data
ENV APACHE_RUN_GROUP    www-data
ENV APACHE_PID_FILE     /var/run/apache2.pid
ENV APACHE_RUN_DIR      /var/run/apache2
ENV APACHE_LOG_DIR      /var/log/apache2
ENV APACHE_LOCK_DIR     /var/lock/apache2

# Add php.ini for Concrete5.
ADD php.ini /etc/php/7.1/apache2/php.ini
# Backup Apache and PHP configration files.
RUN mkdir -p /tmp/conf_backup \
    && cp /etc/php/7.1/apache2/php.ini /tmp/conf_backup/ \
    && cp /etc/apache2/sites-available/000-default.conf /tmp/conf_backup/ \
    && echo "cp -i /tmp/conf_backup/php.ini /etc/php/7.1/apache2/" > /tmp/conf_backup/restore_conf.sh \
    && echo "cp -i /tmp/conf_backup/000-default.conf /etc/apache2/sites-available/" >> /tmp/conf_backup/restore_conf.sh \
    && chmod +x /tmp/conf_backup/restore_conf.sh

WORKDIR /var/www/html

# Set entrypoint.
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]

# Expose 80 (HTTP) and 443 (HTTPS) ports.
EXPOSE 80 443