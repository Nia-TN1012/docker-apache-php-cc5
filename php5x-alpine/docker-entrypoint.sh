#!/bin/sh

echo "Starting ..."

# If the configuration file is empty, restore the file from the backup in the image.
if [ -f /etc/apache2/conf.d/concrete5.conf ]; then
    if [ "$(cat /etc/apache2/conf.d/concrete5.conf)" = "" ]; then
        cp -f /tmp/conf_backup/concrete5.conf /etc//etc/apache2/conf.d/
        echo "'/etc/apache2/conf.d/concrete5.conf' is restored."
    fi
fi

if [ -f /etc/php5/php.ini ]; then
    if [ "$(cat /etc/php5/php.ini)" = "" ]; then
        cp -f /tmp/conf_backup/php.ini /etc/php5/
        echo "'/etc/php5/php.ini' is restored."
    fi
fi

echo "OK!"

# Launch Apache2
exec /usr/sbin/httpd -D FOREGROUND