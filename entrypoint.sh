#!/bin/sh
composer require --dev palantirnet/drupal-rector
vendor/bin/rector process web/modules/custom --dry-run
status=$?
exit $status