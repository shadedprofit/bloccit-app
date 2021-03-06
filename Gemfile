source 'https://rubygems.org'

# Use Factory Girl for object creation
gem 'factory_girl_rails', '~> 4.0'
# Use Puma servers for both deployment and production
gem 'puma', group: :production
gem 'puma', group: :production
# Use New Relic APM for monitoring performance
gem 'newrelic_rpm'
# Use Capybara for feature specs
group :development, :test do
  gem 'capybara'
end
# Use RSpec for testing code
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end
# Rails ERD
group :development do
  gem "rails-erd"
end
# Use will_paginate to add pagination to app
gem 'will_paginate', '~> 3.0.5'
# Use Carrierwave for uploading images
gem 'carrierwave'
# Use MiniMagick for manipulating images
gem 'mini_magick'
# Use Fog as a library for cloud services
gem 'fog'
# Use RedCarpet
gem 'redcarpet'
# Use Twitter bootstrap
gem 'bootstrap-sass'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record
group :production do
   gem 'pg'
   gem 'rails_12factor'
 end
 
 group :development do
   gem 'sqlite3'
 end

# Use Pundit for authorizing different users for different tasks
gem 'pundit'
# Use Figaro for handling sensitive data with environmental variables
gem 'figaro', '1.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Devise for user authentication
gem 'devise'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'faker'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

