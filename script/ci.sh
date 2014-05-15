#!/bin/bash

set -x -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/../

source /usr/share/chruby/chruby.sh
chruby ruby-2.0.0
gem install bundler --version '~> 1.6.2' --no-ri --no-rdoc --source http://rubygems.org/ --conservative --verbose

git clean -fd
rm -rf .bundle/

bundle install --retry 3
bundle exec rspec


