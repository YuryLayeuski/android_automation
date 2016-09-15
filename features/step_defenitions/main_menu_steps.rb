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


When(/^I press on history$/) do
  text("History").click
end


Then(/^I verify "([^"]*)" as (\d+)(?:st|nd|rd|th)? result in history list$/) do |name, index|
  result = exists{find_element(id: "history_conversion_list").find_elements(id: "history_single_lane")[index.to_i-1].text("#{name}")}
  fail("Element '#{name}' not found in History list" ) if result == false
end

Then(/^I press X to remove (\d+)(?:st|nd|rd|th)? result in history list$/) do |index|
 	find_element(id: "history_conversion_list").find_elements(id: "deleteIcon")[index.to_i-1].click
end