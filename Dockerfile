FROM wodby/drupal-php:8.1
RUN composer require palantirnet/drupal-rector
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN ls -la /
ENTRYPOINT ["/entrypoint.sh"]