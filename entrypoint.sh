#!/bin/sh
cp /problemMatcher.json /github/workflow/problemMatcher.json
echo "::add-matcher::${RUNNER_TEMP}/_github_workflow/problemMatcher.json"
composer install
vendor/bin/rector process web/modules/custom --dry-run
status=$?
echo "::remove-matcher owner=rector::"
exit $status