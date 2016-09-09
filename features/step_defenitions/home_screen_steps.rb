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
  actual_state = find_element(id: "btn_show_all").enabled?

  if state == "enabled"
    fail("Expecting SHOW ALL button to be enabled") if actual_state == false
  elsif state == "disabled"
    fail("Expecting SHOW ALL button to be disabled") if actual_state == true
  end
end


When(/^I press on Clear button$/) do
  puts "Clear button"
end


When(/^I type "([^"]*)" in application keyboard$/) do |target_value|
  buttons = target_value.split("")
  buttons.each do |button|
  find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{button}']").click
  end
end


Then(/^I should see result as "([^"]*)"$/) do |result|
  actual_text = find_element(id: "target_value").text
  if result != actual_text
    fail("Expecting value to be #{result}, actual result #{actual_text}")
  end
end



When(/^I press on Add to favorites icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favorite Conversions button$/) do
  text("Favorite conversions").click
end

Then(/^I verify "([^"]*)" added to Favorite Conversions screen$/) do |unit_type|
  unit_text = find_element(id: "favorites_item_hint").text 
  fail("Expecting unit name to be #{unit_type}, actual name is #{unit_text}") if unit_text != unit_type
end






