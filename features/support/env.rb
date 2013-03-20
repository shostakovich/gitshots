require 'capybara/poltergeist'
require 'capybara/cucumber'

main_dir = File.expand_path('../../../', File.dirname(__FILE__))
output_dir = File.expand_path('../../output/', File.dirname(__FILE__))

Capybara.app_host = "file://#{output_dir}/"
Capybara.default_driver = :poltergeist

Before do
  `export NANOC_ENV=test; bundle exec nanoc compile`
end

After do
  `rm -rf output/*`
end
