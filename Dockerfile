FROM php:8.1-cli-alpine
ENV PATH=${PATH}:/root/.composer/vendor/bin
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENTRYPOINT ["entrypoint.sh"]