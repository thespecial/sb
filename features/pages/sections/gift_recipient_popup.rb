# Recipient Popup
class GiftRecipientPopup
  include PageObject

  # Section elements
  text_field(:name,    id: TestConstants::GIFT_RECIPIENT_NAME_ID)
  text_field(:email,   id: TestConstants::GIFT_RECIPIENT_EMAIL_ID)
  text_field(:message, id: TestConstants::GIFT_RECIPIENT_MESSAGE_ID)
  button(:next,        id: TestConstants::GIFT_NEXT_BUTTON_ID)
  div(:popup,          xpath: TestConstants::GIFT_RECIPIENT_POPUP_XPATH)

  # Going to check that element is visible. Expect element to be present, in other case - expception
  expected_element_visible(:popup, 10, true)

  # Fill recipient form
  def fill_form(name, email, message)
    self.name=name
    self.email=email
    self.message=message
  end
end
