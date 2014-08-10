source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
gem 'pg'
gem 'sequel-rails'
gem 'slim'
gem 'virtus'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'angular-rails', '~> 0.0.12'
gem 'jquery-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',        group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',      group: :development

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
  gem 'database_cleaner'
end

group :development do
  gem 'foreman', require: false
  gem 'dotenv'
  gem 'slanger', github: 'hubertlepicki/slanger', require: false
end

