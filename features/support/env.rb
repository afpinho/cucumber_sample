require 'colorize'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

# Set environment, QA as default
if ENV['ENV'].nil?
  env = 'qa'
else
  unless ENV['ENV'].eql? 'qa' or ENV['ENV'].eql? 'stage' or ENV['ENV'].eql? 'prod'
    fail!(raise(ArgumentError.new("Invalid environment: #{ENV['ENV']}. Please select qa, stage or prod".red)))
  end
  env = ENV['ENV']
end
