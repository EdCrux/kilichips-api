source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'activeadmin'
gem "active_skin"
gem 'devise'
gem 'devise_token_auth'
gem 'excon', '~> 0.71.0'
gem 'fast_jsonapi'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'redis', '~> 4.0'
gem 'stripe'
# gem 'bcrypt', '~> 3.1.7'
gem 'image_processing', '~> 1.2'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 4.0.1'
  gem 'vcr'
end

group :development do
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'rubocop'
end

group :test do
  gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
  gem 'factory_bot'
  gem 'shoulda-matchers', '~> 4.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
