require 'page-object'

class GiftRecipientPopup
  include PageObject

  text_field(:name, :id => 'giftModalRecipientName')
  text_field(:email, :id => 'giftModalRecipientEmail')
  text_field(:message, :id => 'giftModalPersonalMessage')
  button(:next, :id => 'giftPersonNextButton')

  element(
    :popup,
    :div,
    :xpath => "//div[@class='PwhE'][contains(., 'Who is this gift for?')]"
  )

  expected_element_visible(:popup, 10, true)

  def fill_form(name, email, message)
    self.name=name
    self.email=email
    self.message=message
  end
end
