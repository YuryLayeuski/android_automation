Then(/^I should see "([^"]*)" text$/) do |text|
  result = exist{text"#{text}"}
  fail("Element with name #{text} not found") if result == false
end

Then(/^I verify "([^"]*)" as current screen name$/) do |conversion_name|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='#{conversion_name}']")
end