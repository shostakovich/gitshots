require 'capybara/poltergeist'
require 'capybara/cucumber'

Capybara.app_host = "http://localhost:8000/"
Capybara.default_driver = :poltergeist

Before do
  @nanoc = Process.spawn('NANOC_ENV=test nanoc aco -p 8000 &> /dev/null')
end

After do
  Process.kill("HUP", @nanoc)
end
