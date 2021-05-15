source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '~> 6.1.3'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'

# Assets 
gem 'sass-rails', '>= 6'
gem 'jbuilder', '~> 2.7'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'
gem 'mini_magick'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'brakeman' # Decurity tests https://github.com/presidentbeef/brakeman  
  gem 'rexml', '~> 3.2', '>= 3.2.4'
end

group :development do
  gem 'amazing_print'
  gem 'foreman'
  gem 'pry'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'letter_opener'

  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '>= 1.2016.7'  # Don't rely on OSX/Linux timezone data
