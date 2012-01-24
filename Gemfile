source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'activeadmin'
gem 'sass-rails',   '~> 3.1.5'
gem 'meta_search',    '>= 1.1.0.pre'
gem 'haml'
gem 'hpricot'
gem 'ruby_parser'
gem 'web-app-theme', '~> 0.8.0'

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end

group :production do
	gem 'pg'
end

group :test, :development do
	gem 'sqlite3'
end