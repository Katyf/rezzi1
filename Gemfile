source 'https://rubygems.org'
gem 'rails', '4.2.0'
gem 'rails-api'
gem 'bcrypt'
gem 'aws-sdk-rails'
gem 'spring', :group => :development
gem 'pg'
gem 'newrelic_rpm'
gem 'rack-cors'
gem "active_model_serializers", "~> 0.9.0"
gem 'nokogiri'
group :development, :test do
  gem 'capybara'
  gem 'rubocop'
  gem 'bullet'
  gem 'lol_dba'
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.1.0'
  gem 'pry-rails'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'faker'
  gem 'codeclimate-test-reporter', require: nil
end
group :development do
  gem 'guard'
  gem 'guard-rails'
end
group :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
  gem 'rails_serve_static_assets'
end
