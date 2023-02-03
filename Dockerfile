FROM wodby/drupal-php:latest
RUN composer install palantirnet/drupal-rector
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]