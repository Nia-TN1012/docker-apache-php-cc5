## Apache + PHP container for Concrete5

This repository is a Dcoker image of **Apache** with **PHP** web container for [**Concrete5**](https://www.concrete5.org/).

This Docker image is for the base of [`niatn1012/concrete5`]((https://hub.docker.com/r/niatn1012/concrete5/)), but it is possible to mount the Concrete5 source files from your host or install the other version and use it.

[![Docker Automated build](https://img.shields.io/docker/automated/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Docker Build Status](https://img.shields.io/docker/build/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Docker Pulls](https://img.shields.io/docker/pulls/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Docker Stars](https://img.shields.io/docker/stars/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)](https://github.com/Nia-TN1012/docker-apache-php-cc5/blob/master/LICENSE)

## Supported tags and respective `Dockerfile` links

|Docker tag|Main middleware|Dockerfile link|Size|
|---|---|---|---|
|`php70`, `7.0`, **`latest`**|Apache2, PHP7.0|[(php70)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php70)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php56`, `5.6`|Apache2, PHP5.6|[(php56)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php56)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php56.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5:php56 "Get your own image badge on microbadger.com")|

## Installed PHP modules

* php-mysql
* php-xml
* php-mbstring
* php-curl
* php-mcrypt
* php-zip
* php-gd

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

* 2018/09/12: [All][BugFix] Corrected the docker entry-point shell scripts.
* 2018/09/12: Fixed incorrectly specifying Dockerfile in the build setting of `php70`.
* 2018/09/10: First release.
