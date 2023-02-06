#!/bin/sh
rector process web/modules/custom --dry-run
status=$?
exit $status