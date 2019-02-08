source 'https://rubygems.org'


gem 'rails', '4.2.3'
ruby '2.3.2'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'nokogiri', '>= 1.8.5'
gem 'rabl'
gem 'oj'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'web-console', '~> 2.0', group: :development
gem "rails-html-sanitizer", ">= 1.0.4"
gem "ffi", ">= 1.9.24"

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'puma'
  #gem 'heroku', ">= 3.42.22 "
end

group :development, :test do
  gem 'byebug'
  gem 'spring', '1.1.3'
  #rspec
  gem"rspec-rails"
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
  gem 'guard-livereload'
end
