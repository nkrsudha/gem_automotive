source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'sqlite3'
gem 'puma', '~> 3.0'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug'
  gem 'capistrano-rails'
end

group :development do
 gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "pry-rails" # type binding.pry  in controller method
  gem 'better_errors'
  gem 'annotate'
  gem 'capistrano'
  gem 'capistrano-rvm'
  gem 'capistrano-rails'
  gem 'rename'
end

gem 'jquery-rails'
gem 'gentelella-rails'
gem 'modernizr-rails'
gem 'devise'
gem 'carrierwave'
gem "mini_magick"
gem 'activeadmin', '~> 1.0.0.pre5'
gem 'inherited_resources', '~> 1.7'
gem 'phony_rails'
gem 'ckeditor'
gem 'formadmin'