FROM wodby/drupal-php:8.1
RUN composer require palantirnet/drupal-rector
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]