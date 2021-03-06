#!/bin/sh

echo "Starting ..."

# If the configuration file is empty, restore the file from the backup in the image.
if [ -f /etc/httpd/conf.d/concrete5.conf ]; then
    if [ "$(cat /etc/httpd/conf.d/concrete5.conf)" = "" ]; then
        cp -f /tmp/conf_backup/concrete5.conf /etc//etc/httpd/conf.d/
        echo "'/etc/httpd/conf.d/concrete5.conf' is restored."
    fi
fi

if [ -f /etc/php.ini ]; then
    if [ "$(cat /etc/php.ini)" = "" ]; then
        cp -f /tmp/conf_backup/php.ini /etc/
        echo "'/etc/php.ini' is restored."
    fi
fi

echo "OK!"

# Launch Apache2
exec /usr/sbin/httpd -D FOREGROUND