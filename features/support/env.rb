require 'colorize'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

# Setting environment, QA as default
if ENV['ENV'].nil?
  env = 'qa'
else
  unless ENV['ENV'].casecmp('qa') or ENV['ENV'].casecmp('stage') or ENV['ENV'].casecmp('prod')
    fail!(raise(ArgumentError.new("Invalid environment: #{ENV['ENV']}. Please select qa, stage or prod".red)))
  end
  env = ENV['ENV'].downcase
end
