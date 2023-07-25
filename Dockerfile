FROM composer:2.5.8

RUN echo -e "zend_extension=opcache.so \nopcache.enable=1 \nopcache.enable_cli=1 \nopcache.memory_consumption=4096 \nopcache.max_accelerated_files=100000 \nopcache.jit=disable" > /usr/local/etc/php/conf.d/docker-ext-opcache.ini
#COPY docker/images/base/usr/local/etc /usr/local/etc/

WORKDIR /app

