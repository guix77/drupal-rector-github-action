#!/bin/sh
cp /problemMatcher.json .
echo "::add-matcher::problemMatcher.json"
composer install
vendor/bin/rector process web/modules/custom --dry-run
status=$?
echo "::remove-matcher owner=rector::"
exit $status