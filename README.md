# GitHub action to (dry) run Drupal Rector to spot deprecations.

This GitHub action allows to make a dry run of Drupal Rector to spot deprecations in custom modules.

## Requirements

+ A Drupal project with [Drupal Rector installed & working locally](https://www.palantir.net/rector/adding-drupal-rector-site)

## Installation

Create ````.github/workflows/drupalRector.yml````:

````
name: Drupal Rector

on: [pull_request]

jobs:
  drupal-rector:
      name: Drupal Rector
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v3
        - uses: guix77/drupal-rector-github-action@v8.1.0
````