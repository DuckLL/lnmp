# Feature

1. ubuntu-16.04
1. nignx-1.10.0
1. mariadb-10.0.23
1. php-7.0.7
1. jemalloc-4.2.0
1. InnoDB:yes

# Install

```sh
docker pull duckll/lnmp
```

# Usage

```sh
docker run -idt --name webserver -p {port}:80 -v {diretory}:/home/wwwroot/default/{something} duckll/lnmp
```

## phpmyadmin
http://localhost:{port}/phpmyadmin
root::root

## phpinfo
http://localhost:{port}/phpinfo.php

## p.php
http://localhost:{port}/phpinfo.php

## yourweb
http://localhost:{port}/{something}

## Config

nignx
```sh
/usr/local/nginx/conf/nginx.conf
```

php
```sh
/usr/local/php/etc/php.ini
```

# Issue
If something wrong
```sh
docker restart webserver
```
