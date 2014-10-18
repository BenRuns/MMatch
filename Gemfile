source 'https://rubygems.org'

ruby '2.1.3'

gem 'rails', '4.1.6'
gem 'bootstrap-sass', '~> 3.2.0.1'
gem 'coffee-rails', '~> 4.0.0'
gem 'jbuilder', '~> 2.1.3'
gem 'jquery-rails'
gem 'omniauth-twitter'
gem 'sass-rails', '~> 4.0.3'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
	gem 'sqlite3'
	gem 'better_errors'
	gem 'binding_of_caller'
	gem 'rspec-rails', '~> 3.0.2'
	gem 'factory_girl_rails', '~> 4.4.1'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'capybara', '~> 2.4.1'
  gem 'shoulda-matchers', '~> 2.6.2'
  gem 'database_cleaner'
  gem 'simplecov', :require => false
end

group :production  do
	gem 'pg'
	gem 'rails_12factor'
end
