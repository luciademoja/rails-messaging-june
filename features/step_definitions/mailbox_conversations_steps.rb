Then(/^I should be logged in as "([^"]*)"$/) do |name|
  name
end

Given(/^I am in the inbox page$/) do
  visit mailbox_inbox_path
end

Then(/^I should see a "([^"]*)" button$/) do |content|
  expect(page).to have_content content
end

Then(/^I should be in the conversation page$/) do
  expect(page.current_path).to eq new_conversation_path
end

Then(/^show me the page$/) do
  save_and_open_page
end
