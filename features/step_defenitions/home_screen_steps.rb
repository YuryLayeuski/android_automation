Then(/^Left Unit picker value should be "([^"]*)"$/) do |value|
  actual_picker_text = find_elements(id: "select_unit_spinner")[0].text

  if value != actual_picker_text
    fail("Expecting Left Unit picker value to be #{value} actual value is #{actual_picker_text}")
  end
end

Then(/^Right Unit picker value should be "([^"]*)"$/) do |value|
  actual_picker_text = find_elements(id: "select_unit_spinner")[1].text

  if value != actual_picker_text
    fail("Expecting Right Unit picker value to be #{value} actual value is #{actual_picker_text}")
  end
end 

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  puts state
end

When(/^I press on Clear button$/) do
  puts "Clear button"
end

When(/^I type "([^"]*)" to target text field$/) do |target_value|
  find_element(id: "keypad").text(target_value).click
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  actual_text = find_element(id: "target_value").text
  if result != actual_text
    fail("Incorect conversion result")
  end
end



When(/^I press on Add to favorites icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favorite Conversions button$/) do
  text("Favorite conversions").click
end

Then(/^I verify "([^"]*)" added to Favorite Conversions screen$/) do |unit_type|
  text("Favorite conversions")
  text( unit_type ) 
end
