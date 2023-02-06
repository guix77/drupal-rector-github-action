#!/bin/sh
composer require palantirnet/drupal-rector --dev --no-update
vendor/bin/rector process web/modules/custom --dry-run
status=$?
exit $status