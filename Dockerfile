FROM sineverba/php8xc:latest

RUN pecl install grpc \
    && echo "extension=grpc.so" > /usr/local/etc/php/conf.d/docker-php-ext-grpc.ini

# Verify installation
RUN php -m | grep grpc

CMD ["bash"]

