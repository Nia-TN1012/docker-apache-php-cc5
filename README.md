## Apache + PHP container for Concrete5

This repository is a Dcoker image of **Apache** with **PHP** web container for [**Concrete5**](https://www.concrete5.org/).

This Docker image is for the base of [`niatn1012/concrete5`]((https://hub.docker.com/r/niatn1012/concrete5/)), but it is possible to mount the Concrete5 source files from your host or install the other version and use it.

## Supported tags and respective `Dockerfile` links

|Docker tag|Main middleware|Dockerfile link|
|---|---|---|
|`php70`, `7.0`, **`latest`**|Apache2, PHP7.0|[(php70)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php70)|
|`php56`, `5.6`|Apache2, PHP5.6|[(php56)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php56)|

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

* 2018/09/10: First release.