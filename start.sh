docker run --name sysadmin.compxtreme.ro-mysql -d \
    -v /data/personal/repositories/git/websites/sysadmin.compxtreme.ro/mysql:/var/lib/mysql/ \
    --restart=always \
    mariadb-apline

docker run -p 172.17.0.1:8060:80 --name sysadmin.compxtreme.ro-html -d \
    -v /data/personal/repositories/git/websites/sysadmin.compxtreme.ro/html:/var/www/html \
    php-suhosin:5.6-apache
