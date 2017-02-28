# Delivery Time popup
class ChooseDeliveryTimePopup
  include PageObject

  # Popup elements
  button(:send_email,  id: TestConstants::SEND_NOW_BUTTON_ID)
  button(:select_date, id: TestConstants::SELECT_DATE_BUTTON_ID)
  button(:next,        id: TestConstants::NEXT_BUTTON_ID)
  div(:popup,          xpath: TestConstants::DELIVERY_TIME_POPUP_XPATH)

  # Will check for expected element
  expected_element_visible(:popup, 10, true)
end
