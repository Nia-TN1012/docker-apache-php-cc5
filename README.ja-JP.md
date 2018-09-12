## Concrete5用 Apache + PHPコンテナ

このリポジトリは、[**Concrete5**](https://www.concrete5.org/)用の *Apache* + *PHP* WebコンテナのDockerイメージです。

このDockerイメージは、[`niatn1012/concrete5`]((https://hub.docker.com/r/niatn1012/concrete5/))のベースですが、ホスト上のConcrete5ソースファイルをマウントしたり、他のバージョンのものをインストールしたりすることができます。

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/niatn1012/apache-php-cc5/)
[![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)](https://github.com/Nia-TN1012/docker-apache-php-cc5/blob/master/LICENSE)

## サポートされるタグと`Dockerfile`のリンク一覧

|Dockerタグ|主なミドルウェア|Dockerfileのリンク|
|---|---|---|
|`php70`, `7.0`, **`latest`**|Apache2, PHP7.0|[(php70)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php70)|
|`php56`, `5.6`|Apache2, PHP5.6|[(php56)](https://github.com/Nia-TN1012/docker-apache-php-cc5/tree/master/php56)|

## インストールされているPHPモジュール

* php-mysql
* php-xml
* php-mbstring
* php-curl
* php-mcrypt
* php-zip
* php-gd

## リンク

* niatn1012/concrete5 ( [Docker Hub](https://hub.docker.com/r/niatn1012/concrete5/) / [GitHub](https://github.com/Nia-TN1012/docker-concrete5) )


## [付録] ホスト上のConcrete5ソースファイルをマウントし、このDockerイメージからコンテナを作成して使う

ホスト上のConcrete5ソースファイルのディレクトリ（以下の例では、`${CONCRETE5_SOURCE_PATH}`とします）をコンテナ上の`/var/www/html`にマウントします。

```bash
# `docker run`コマンド
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
    
    # ... (中略)
```

## 免責事項

このDockerイメージを利用したことにより生じたいかなるトラブル・損害において、作者及びChronoir.netは一切の責任を負いかねます。
あらかじめご了承ください。

## リリースノート

* 2018/09/12: `php70`のビルド設定にて、Dockerfileの指定に誤りがあったので修正しました。
* 2018/09/10: 初版リリース
