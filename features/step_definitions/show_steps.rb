Given(/^some existing gitshots$/) do

end

When(/^I visit the list of gitshots$/) do
  visit('/')
end

Then(/^I should see a list of gitshots$/) do
  page.should have_selector('img')
end
