require 'page-object'

class ChooseDeliveryTimePopup
  include PageObject

  button(:next, :id => 'giftPersonNextButton')

  div(
    :popup,
    :xpath => "//div[@class='PwhE'][contains(., 'when do you want')]"
  )

  button(:send_email, :id => 'giftRightNowButton')
  button(:select_date, :id => 'giftDateButton')


  expected_element_visible(:popup, 10, true)

  def fill_form(name, email, message)
    self.name=name
    self.email=email
    self.message=message
  end
end
