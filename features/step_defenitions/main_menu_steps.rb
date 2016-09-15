Given(/^I land on home screen$/) do
  find_element(accessibility_id: "Open navigation drawer")
  find_element(accessibility_id: "More options")
end

When(/^I press menu icon$/) do
  find_element(accessibility_id: "Open navigation drawer").click
end

Then(/^I should see left side menu$/) do
  text("Unit Converter")
end

When(/^I press on My Conversions$/) do
  text("My conversions").click
end

Then(/^I land on My Conversions screen$/) do
  text("My conversions")
end

Then(/^I select "([^"]*)" unit$/) do |unit_name|
  find_element_in_list(unit_name)
  text("#{unit_name}").click
end