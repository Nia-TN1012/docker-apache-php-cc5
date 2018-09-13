## Apache + PHP container for Concrete5

This repository is a Dcoker image of **Apache** with **PHP** web container for [**Concrete5**](https://www.concrete5.org/).

This Docker image is for the base of [`niatn1012/concrete5`](https://hub.docker.com/r/niatn1012/concrete5/), but it is possible to mount the Concrete5 source files from your host or install the other version and use it.

[![Docker Automated build](https://img.shields.io/docker/automated/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Docker Build Status](https://img.shields.io/docker/build/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Docker Pulls](https://img.shields.io/docker/pulls/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Docker Stars](https://img.shields.io/docker/stars/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)](https://github.com/Nia-TN1012/docker-apache-php-cc5/blob/master/LICENSE)

## Supported tags and respective `Dockerfile` links

For OS image **Debian Stretch-slim**, **CentOS** and **Alpine Linux** are available.

For PHP version `PHP 5.6`, `PHP 7.0`, `PHP 7.1` and `PHP 7.2` are available.

|Docker tag|OS image|Main middleware|Dockerfile link|Size|
|---|---|---|---|---|
|`php72-debian`, `php72`, `php7-debian`, `php7`, `debian`, **`latest`**|Debian Stretch-slim|Apache2, PHP7.2|[(php72)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php72)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php72.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php72-centos`, `php7-centos`, `centos`|CentOS 7|Apache2, PHP7.2|[(php72-centos)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php72-centos)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php72-centos.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php72-alpine`, `alpine`|Alpine Linux 3.8|Apache2, PHP7.2|[(php2-alpine)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php72-alpine)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php72-alpine.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php71-debian`, `php71`|Debian Stretch-slim|Apache2, PHP7.1|[(php71)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php71)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php71.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php71-centos`|CentOS 7|Apache2, PHP7.1|[(php71-centos)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php71-centos)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php71-centos.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php70-debian`, `php70`, ~~`7.0`~~|Debian Stretch-slim|Apache2, PHP7.0|[(php70)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php70)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php70-centos`|CentOS 7|Apache2, PHP7.0|[(php70-centos)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php70-centos)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php70-centos.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php56-debian`, `php56`, `php5-debian`, `php5`, ~~`5.6`~~|Debian Stretch-slim|Apache2, PHP5.6|[(php56)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php56)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php56.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5:php56 "Get your own image badge on microbadger.com")|
|`php56-centos`, `php5-centos`|CentOS 7|Apache2, PHP5.6|[(php56-centos)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php56-centos)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php56-centos.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|

> * The `7.0` and `5.6` tags have been deprecated in order to organize this repository. Please use another tag of the same image.
> * Alpine Linux version is provided only with `PHP 7.2`.

## Installed PHP modules

### Debian Stretch-slim

> `php70` version is installed from Debian official repository,`php72`, `php71`, `php56` version are installed from [`Sury repository`](https://deb.sury.org/).

* php-mysql
* php-xml
* php-mbstring
* php-curl
* php-mcrypt (`php56`,` php70`, `php71` version only)
* php-zip
* php-gd

### CentOS 7

> Installed from [`Remi repository`](https://rpms.remirepo.net/).

* php-mysql
* php-xml
* php-mbstring
* php-mcrypt (`php56-centos`,` php70-centos`, `php71-centos` version only)
* php-zip
* php-gd

### Alpine Linux
    
> Installed from Alpine Linux official repository.

* php-mysql
* php-xml
* php-mbstring
* php-curl
* php-zip
* php-gd
* php-apache2
* php-simplexml
* php-dom
* php-ctype
* php-json
* php-fileinfo
* php-tokenizer
* php-openssl
* php-iconv
* php-session

## Links

* niatn1012/concrete5 ( [Docker Hub](https://hub.docker.com/r/niatn1012/concrete5/) / [GitHub](https://github.com/Nia-TN1012/docker-concrete5) )


## [APPENDIX] Mount Concrete5 source files on your host to a container created from this Dokoker image and use it

Mount Concrete5 source files directory (as `${CONCRETE5_SOURCE_PATH}` in the below example.) on your host to `/var/www/html` on a container.

```bash
# `docker run` command
docker run --name cc5_app --link cc5_db:cc5:db -v /${CONCRETE5_SOURCE_PATH}:/var/www/html -d niatn1012/apache-php-cc5:php70
```

```yml
# docker-compose.yml
version: "3"
services:
    app:
        image: niatn1012/apache-php-cc5:php70
        container_name: cc5_app
        links:
          - cc5_db:cc5_db
        ports:
          - 80:80
        volumes:
          - ${CONCRETE5_SOURCE_PATH}:/var/www/html
    
    # ... (Omission)
```

## Legal Disclaimer

The author and Chronoir.net accept no any responsibility for any obstacles or damages caused by using this Dokcer image.
Please be understanding of this beforehand.

## Release Notes

* 2018/09/14: As a new variation, PHP 7.1, PHP 7.2, CentOS and Alpine Linux version were added.
* 2018/09/12: [All][BugFix] Corrected the docker entry-point shell scripts.
* 2018/09/12: Fixed incorrectly specifying Dockerfile in the build setting of `php70`.
* 2018/09/10: First release.
