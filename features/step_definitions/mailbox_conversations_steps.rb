Then(/^I should be logged in as "([^"]*)"$/) do |name|
  name
end

Given(/^I am in the inbox page$/) do
  visit mailbox_inbox_path
end

Then(/^I should be in the writing page$/) do
  expect(page.current_path).to eq new_conversation_path
end

Then(/^I select "([^"]*)" as "([^"]*)"$/) do |value, options|
  select(value, options={})
end

Then(/^I should be on the conversation page$/) do
  expect(page.current_path).to eq conversation_path(:id => 6)
end
