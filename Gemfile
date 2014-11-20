source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'
# Use postgresql as the database for Active Record
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.4'
gem 'foundation-rails'
gem 'will_paginate', '~> 3.0.5'
#bootstrap
gem "therubyracer"
gem 'bootstrap-sass', '~> 3.3.1'
gem 'bootstrap_form'
gem 'autoprefixer-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'heroku'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

gem 'annotate_yaml'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# env variables
gem 'foreman'

# Sidekiq for background jobs (sinatra is required)
gem 'sidekiq'
gem 'sinatra', require: false

# Error reporting
gem 'airbrake'

# Performance
gem 'newrelic_rpm'

# Cache
gem 'dalli'

# Data related

# Admin route
gem 'activeadmin', github: 'activeadmin'


# Models stuff
gem 'friendly_id'
gem 'state_machine', require: 'state_machine/core'
gem 'draper'
gem 'rails-observers'

# Frontend stuff

# Templating
gem 'haml-rails'
gem 'slim-rails'

# Js
gem 'lazy_high_charts'
gem 'jquery-turbolinks'
gem 'gattica', :git => 'git://github.com/chrisle/gattica.git'

# Css / sass
gem 'compass-rails'
gem 'compass-inuit'
gem 'font-awesome-rails'

# Pagination
gem 'kaminari'

# Autoformat
gem 'redcarpet'
gem 'rails_autolink'
gem 'auto_html'

# Forms
gem 'formtastic'
gem 'simple_form'
gem 'ransack'
gem 'countries', github: 'hexorx/countries'
gem 'country_select', '~> 1.3'
gem 'by_star'

# Authentication and Authorization
gem 'devise'
gem 'cancancan'

# Uploads
gem 'carrierwave'
gem 'cloudinary'

# Controller simplification
gem 'decent_exposure', github: 'voxdolo/decent_exposure'

# Other Tools
gem 'gon'

# Geolocation
gem 'geocoder'

# Translations
gem 'globalize', '~> 4.0.0'
gem 'http_accept_language'
gem 'routing-filter', :github => 'svenfuchs/routing-filter'

# Server
gem 'thin'

# Factories (a lot for the tests)
gem 'factory_girl_rails', '~> 4.0'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'parallel_tests'
end

group :test do
  gem 'delorean'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false, github: 'cucumber/cucumber-rails'
  gem 'poltergeist'
  gem 'email_spec', github: 'tibastral/email-spec'
  gem 'mocha'
end

group :test, :development do
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'capybara'
end

#group :production do
#  gem 'rails_12factor'
#nd
