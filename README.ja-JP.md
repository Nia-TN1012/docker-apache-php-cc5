## Concrete5用 Apache + PHPコンテナ

このリポジトリは、[**Concrete5**](https://www.concrete5.org/)用の **Apache** + **PHP** WebコンテナのDockerイメージです。

このDockerイメージは、[`niatn1012/concrete5`](https://hub.docker.com/r/niatn1012/concrete5/)のベースですが、ホスト上のConcrete5ソースファイルをマウントしたり、他のバージョンのものをインストールしたりすることができます。

[![Docker Automated build](https://img.shields.io/docker/automated/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Docker Build Status](https://img.shields.io/docker/build/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Docker Pulls](https://img.shields.io/docker/pulls/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Docker Stars](https://img.shields.io/docker/stars/niatn1012/apache-php-cc5.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)](https://github.com/Nia-TN1012/docker-apache-php-cc5/blob/master/LICENSE)

## サポートされるタグと`Dockerfile`のリンク一覧

OSイメージは **Debian Stretch-slim** と **CentOS**、**Alpine Linux** がございます。

PHPのバージョンは `PHP5.6` と `PHP7.0`、`PHP7.1`、`PHP7.2` がございます。

|Dockerタグ|OSイメージ|主なミドルウェア|Dockerfileのリンク|サイズ|
|---|---|---|---|---|
|`php72-debian`, `php72`, `php7-debian`, `php7`, `debian`, **`latest`**|Debian Stretch-slim|Apache2, PHP7.2|[(php72)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php72)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php72.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php72-centos`, `php7-centos`, `centos`|CentOS 7|Apache2, PHP7.2|[(php72-centos)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php72-centos)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php72-centos.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php72-alpine`, `alpine`|Alpine Linux 3.8|Apache2, PHP7.2|[(php2-alpine)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php72-alpine)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php72-alpine.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|
|`php56-debian`, `php56`, `php5-debian`, `php5`|Debian Stretch-slim|Apache2, PHP5.6|[(php56)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php56)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php56.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5:php56 "Get your own image badge on microbadger.com")|
|`php56-centos`, `php5-centos`|CentOS 7|Apache2, PHP5.6|[(php56-centos)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php56-centos)|[![](https://images.microbadger.com/badges/image/niatn1012/apache-php-cc5:php56-centos.svg)](https://microbadger.com/images/niatn1012/apache-php-cc5 "Get your own image badge on microbadger.com")|

> * Alpine Linux版は、`PHP7.2`のみの提供となります。


## インストールされているPHPモジュール

### Debian Stretch-slim版

> [`Suryリポジトリ`](https://deb.sury.org/)よりインストールされます。

* php-mysql
* php-xml
* php-mbstring
* php-curl
* php-mcrypt (`php56`版のみ)
* php-zip
* php-gd

### CentOS 7版

> [`Remiリポジトリ`](https://rpms.remirepo.net/)よりインストールされます。

* php-mysql
* php-xml
* php-mbstring
* php-mcrypt (`php56-centos`版のみ)
* php-zip
* php-gd

### Alpine Linux版

> Alpine Linuxの公式リポジトリよりインストールされます。

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

## リンク

* niatn1012/concrete5 ( [Docker Hub](https://hub.docker.com/r/niatn1012/concrete5/) / [GitHub](https://github.com/Nia-TN1012/docker-concrete5) )

## [付録] ホスト上のConcrete5ソースファイルをマウントし、このDockerイメージからコンテナを作成して使う

ホスト上のConcrete5ソースファイルのディレクトリ（以下の例では、`${CONCRETE5_SOURCE_PATH}`とします）をコンテナ上の`/var/www/html`にマウントします。

```bash
# `docker run`コマンド
docker run --name cc5_app --link cc5_db:cc5:db -v /${CONCRETE5_SOURCE_PATH}:/var/www/html -d niatn1012/apache-php-cc5:php72
```

```yml
# docker-compose.yml
version: "3"
services:
    app:
        image: niatn1012/apache-php-cc5:php72
        container_name: cc5_app
        links:
          - cc5_db:cc5_db
        ports:
          - 80:80
        volumes:
          - ${CONCRETE5_SOURCE_PATH}:/var/www/html
    
    # ... (中略)
```

## 免責事項

このDockerイメージを利用したことにより生じたいかなるトラブル・損害において、作者及びChronoir.netは一切の責任を負いかねます。
あらかじめご了承ください。

## リリースノート

* 2019/04/10: Dockerイメージの整理のため、ラインナップをPHP5.6とPHP7.2のみにしました。DockerfileとApacheの設定ファイルを修正しました。
* 2018/09/14: 新たなバリエーションとして、PHP7.1、PHP7.2、CentOS、Alpine Linux版を追加しました。
* 2018/09/12: [全て][バグ修正] Dockerのエントリーポイントのシェルスクリプトを修正しました。
* 2018/09/12: `php70`のビルド設定にて、Dockerfileの指定に誤りがあったので修正しました。
* 2018/09/10: 初版リリース
