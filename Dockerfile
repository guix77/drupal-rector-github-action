FROM wodby/drupal-php:8.1
USER root
COPY ./problemMatcher.json /
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]