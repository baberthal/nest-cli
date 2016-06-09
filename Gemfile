source 'https://rubygems.org'

# Specify your gem's dependencies in nest-cli.gemspec
gemspec

group :development, :test do
  gem 'pry', require: false
  gem 'pry-theme', require: false
  gem 'pry-byebug', require: false
  gem 'pry-stack_explorer', require: false
  gem 'guard-rspec', require: false
  gem 'rb-fsevent', require: false if RUBY_PLATFORM =~ /darwin/i
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
end
