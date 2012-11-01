source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.0.3"
gem 'd3_rails'

gem "quiet_assets", ">= 1.0.1", :group => :development
gem "pg",                       :group => :production

group :development, :test do
  gem 'mysql2'
  gem "rspec-rails", ">= 2.11.0"
  gem "factory_girl_rails", ">= 4.1.0"
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem "bootstrap-sass", ">= 2.1.0.1"
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test do
  gem "email_spec", ">= 1.2.1"
  gem "database_cleaner", ">= 0.8.0"
  gem "launchy", ">= 2.1.2"
  gem "capybara", ">= 1.1.2"
  gem "cucumber-rails", ">= 1.3.0", :require => false
end