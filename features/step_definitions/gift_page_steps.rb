require_relative '../pages/gift_page'
require 'rspec/expectations'

Given(/^I am on the \/gift page$/) do
  visit GiftPage
end

When(/^I click on “Buy Gift Now” button$/) do
  on(GiftPage).buy_gift
  sleep(3);
end

When(/^I click “Buy Gift For (.*)” button$/) do |for_whom|
  on(GiftPage).buy_gift_for(for_whom)
end

When(/^I choose (.*) package$/) do |package|
  on(GiftPage).choose_package_popup.select_package(package)
end

When(/^I see “Who is this gift for\?” dialog$/) do
  on(GiftRecipientPopup).has_expected_element_visible?
end

When(/^I type recipient name "(.*)"$/) do |name|
  on(GiftRecipientPopup).name=name
end

When(/^I type recipient email "(.*)"$/) do |email|
  on(GiftRecipientPopup).email=email
end

When(/^I type personal message "(.*)"$/) do |message|
  on(GiftRecipientPopup).message=message
end

When(/^I click “Next” button$/) do
  on(GiftRecipientPopup).next
end

When(/^I see “When do you want to notify the recipient of your gift\?” dialog$/) do
  on(ChooseDeliveryTimePopup).has_expected_element_visible?
end

When(/^I click “Send Email”$/) do
  on(ChooseDeliveryTimePopup).send_email
end

Then(/^I am on the \/gift\/payment page$/) do
  expect(current_url.match '/gift/payment').to_not be_nil
end
