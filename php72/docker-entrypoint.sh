#!/bin/bash

echo "Starting ..."

# If the configuration file is empty, restore the file from the backup in the image.
if [ -f /etc/apache2/sites-available/000-default.conf ]; then
    if [ "$(cat /etc/apache2/sites-available/000-default.conf)" = "" ]; then
        cp -f /tmp/conf_backup/000-default.conf /etc/apache2/sites-available/
        echo "'/etc/apache2/sites-available/000-default.conf' is restored."
    fi
fi

if [ -f /etc/php/7.2/apache2/php.ini ]; then
    if [ "$(cat /etc/php/7.2/apache2/php.ini)" = "" ]; then
        cp -f /tmp/conf_backup/php.ini /etc/php/7.2/apache2/
        echo "'/etc/php/7.2/apache2/php.ini' is restored."
    fi
fi

echo "OK!"

# Launch Apache2
exec /usr/sbin/apache2 -D FOREGROUND