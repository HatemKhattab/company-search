source 'https://rubygems.org'


gem 'rails', '4.2.3'
ruby '2.1.5'
gem 'mysql2', '~> 0.3.18'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'nokogiri', '~> 1.6', '>= 1.6.7.2'
gem 'rabl'
gem 'oj'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'web-console', '~> 2.0', group: :development

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'puma'
  gem 'heroku'
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