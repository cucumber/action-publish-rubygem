[![Test](https://github.com/cucumber/action-publish-rubygem/actions/workflows/test.yaml/badge.svg)](https://github.com/cucumber/action-publish-rubygem/actions/workflows/test.yaml)

# publish-rubygem

Builds and publishes a Ruby Gem to https://rubygems.org

Very simple, just uses a couple of `gem` commands. Needs Ruby to be installed first.

## Inputs:

* `rubygems_api_key`
* `working_directory` (default `.`)

## Example:

````yaml
name: Release

on:
  push:
    branches: [release/*]

jobs:
  release:
    runs-on: ubuntu-latest
    environment: Release
    permissions:
      contents: write
    steps:
      - uses: actions/checkout@v4
      - uses: ruby/setup-ruby@v1
        with:
          ruby-version: 3.3
          bundler-cache: true
      - uses: cucumber/action-publish-rubygem@v1.0.0
        with:
          rubygems_api_key: ${{ secrets.RUBYGEMS_API_KEY }}
````
