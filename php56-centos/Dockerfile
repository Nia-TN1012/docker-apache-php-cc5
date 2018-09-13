#
# Apache2 and PHP 5.6 for Concrete5
# CentOS 7 + Apache2 + PHP5.6
#

FROM centos:7

LABEL maintainer "Nia Tomonaka (@nia_tn1012)"

# Update packages and installs;
# * httpd
# * php (remi-php56)
#   * php-mysql             (MySQL)
#   * php-xml               (XML)
#   * php-mbstring          (Mbstring)
#   * php-mcrypt            (Mcrypt)
#   * php-zip               (ZipArchive)
#   * php-gd                (Graphics)
RUN yum update -y \
    && rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm \
    && yum install -y httpd \
    && yum install -y --enablerepo=remi,remi-php56 \
        php \
            php-mysql \
            php-xml \
            php-mbstring \
            php-mcrypt \
            php-zip \
            php-gd \
        unzip \
    && yum clean all

# Set enviorment variables.
ENV APACHE_RUN_USER     apache
ENV APACHE_RUN_GROUP    apache

# Add Apache and PHP configration for Concrete5.
ADD php.ini /etc/php.ini
ADD concrete5.conf /etc/httpd/conf.d/concrete5.conf

# Backup Apache and PHP configration files.
RUN mkdir -p /tmp/conf_backup \
    && cp /etc/php.ini /tmp/conf_backup/ \
    && cp /etc/httpd/conf.d/concrete5.conf /tmp/conf_backup/ \
    && echo "cp -i /tmp/conf_backup/php.ini /etc/" > /tmp/conf_backup/restore_conf.sh \
    && echo "cp -i /tmp/conf_backup/concrete5.conf /etc//etc/httpd/conf.d/" >> /tmp/conf_backup/restore_conf.sh \
    && chmod +x /tmp/conf_backup/restore_conf.sh

WORKDIR /var/www/html

# Set entrypoint.
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]

# Expose 80 (HTTP) and 443 (HTTPS) ports.
EXPOSE 80 443