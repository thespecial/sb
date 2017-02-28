Given(/^I am on the \/gift page$/) do
  visit GiftPage
end

When(/^I click on “Buy Gift Now” button$/) do
  on(GiftPage) do |page| 
    page.buy_gift
    page.wait_for_scroll_to_finish
  end
end

When(/^I see “Choose Gift” dialog$/) do
  on(ChoosePackagePopup).has_expected_element_visible?
end

When(/^I click “Buy Gift For (.*)” button$/) do |whom|
  on(GiftPage).buy_gift_for(whom)
end

When(/^I choose (.*) package$/) do |package|
  on(GiftPage).choose_package_popup.select_package(package)
end

When(/^I see “Recipient” dialog$/) do
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

When(/^I see “Delivery Time” dialog$/) do
  on(ChooseDeliveryTimePopup).has_expected_element_visible?
end

When(/^I click “Send Email”$/) do
  on(ChooseDeliveryTimePopup).send_email
end

Then(/^I am on the \/gift\/payment page$/) do
  expected_in_url = '/gift/payment'
  expect(current_url.match expected_in_url).to_not be_nil
end
