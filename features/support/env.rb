require 'capybara/cucumber'
Capybara.default_driver = :selenium
Capybara.app_host = "http://localhost:8000/"

Before do
  @nanoc = Process.spawn('nanoc aco -p 8000 &> /dev/null')
end

After do
  Process.kill("HUP", @nanoc)
end
