FROM wodby/drupal-php:8.1
USER root
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
USER wodby
ENTRYPOINT ["/entrypoint.sh"]