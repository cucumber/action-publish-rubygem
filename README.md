[![Test](https://github.com/cucumber/action-publish-rubygem/actions/workflows/test.yaml/badge.svg)](https://github.com/cucumber/action-publish-rubygem/actions/workflows/test.yaml)

# publish-rubygem

Builds and publishes a Ruby Gem to https://rubygems.org

Very simple, just uses a couple of `gem` commands. Needs Ruby to be installed first.

## Inputs:

* `working-directory` (default `.`)

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
      id-token: write
      contents: read      
    steps:
      - uses: actions/checkout@v2
        with:
          persist-credentials: false
      - uses: rubygems/configure-rubygems-credentials@v2.0.0
      - uses: ruby/setup-ruby@v1
        with:
          ruby-version: 3.0.2
      - uses: cucumber/action-publish-rubygem@v1.0.0
        with:
          working-directory: ruby
````
