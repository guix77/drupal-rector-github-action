FROM php:8.1-cli-alpine
ENV PATH=${PATH}:/root/.composer/vendor/bin
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN chmod +x entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]