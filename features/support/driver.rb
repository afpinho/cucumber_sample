# Set driver HEADLESS(Poltergeist) or SELENIUM(Firefox, Safari, Chrome by default)

# HEADLESS Poltergeist
if ENV['HEADLESS']
  Capybara.register_driver :poltergeist do |app|
    options = {
        :js_errors => false,
        :timeout => 360,
        :debug => false,
        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
        :inspector => false,
    }
    Capybara::Poltergeist::Driver.new(app, options)
  end
  Capybara.javascript_driver = :selenium
  Capybara.default_driver = :poltergeist
else

  # Firefox
  if ENV['BROWSER'].eql? 'firefox'
    Capybara.register_driver :firefox do |app|
      Capybara::Selenium::Driver.new(app, :browser => :firefox)
    end
    Capybara.default_driver = :firefox

  # Chrome
  else
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    Capybara.default_driver = :chrome

  end

  # Set maximize size
  Capybara.page.driver.browser.manage.window.resize_to(1680,1050)
  Capybara.page.driver.browser.manage.window.maximize

end

# Timeout to find element (in seconds)
Capybara.default_max_wait_time = 5
