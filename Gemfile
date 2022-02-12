source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"
gem "rails", "~> 7.0.1"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'bcrypt', '~> 3.1.7'
gem 'jwt'
gem 'active_model_serializers', '~> 0.10.0'
gem 'will_paginate', '~> 3.1.0'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 5.1.0'
end

group :development do
end

group :test do
  gem 'factory_bot_rails', '~> 4.0'   # library that provides methods to create test fixtures for automated software testing
  gem 'shoulda-matchers', '~> 3.1'    # provides RSpec with additional matchers
  gem 'database_cleaner'              # cleans db before each test suite
  gem 'faker'                         # library for generating fake data
  gem "sqlite3", "~> 1.4"
end
