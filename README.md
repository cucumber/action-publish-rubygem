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
      - uses: actions/checkout@v2
      - uses: ruby/setup-ruby@v1
        with:
          ruby-version: 3.0.2
          bundler-cache: true
      - uses: cucumber-actions/publish-rubygem@v1.0.0
        with:
          rubygems_api_key: ${{ secrets.RUBYGEMS_API_KEY }}
````
