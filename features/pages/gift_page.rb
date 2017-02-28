class GiftPage
  include PageObject

  # Page URL
  page_url("#{TestConstants::BASE_URL}/gift")

  # Page elements
  button(:buy_gift,         id: TestConstants::BUY_NOW_BUTTON_ID)
  button(:buy_gift_for_her, id: TestConstants::BUY_FOR_HER_BUTTON_ID)
  button(:buy_gift_for_him, id: TestConstants::BUY_FOR_HIM_BUTTON_ID)

  # Define page section for choosing package popup
  page_section(
    :choose_package_popup,
    ChoosePackagePopup,
    xpath: TestConstants::CHOOSE_PACKAGE_POPUP_XPATH
  )

  # Define page section for gift recipient popup
  page_section(
    :recipient_popup,
    GiftRecipientPopup,
    xpath: TestConstants::GIFT_RECIPIENT_POPUP_XPATH
  )

  # Define page section for delivery time popup
  page_section(
    :delivery_time_popup,
    ChooseDeliveryTimePopup,
    xpath: TestConstants::DELIVERY_TIME_POPUP_XPATH
  )

  # Clicks corresponding buy button depending on user type
  def buy_gift_for(whom)
    if whom == TestConstants::FOR_HIM
      self.buy_gift_for_him
    elsif whom == TestConstants::FOR_HER
      self.buy_gift_for_her
    else
      raise "Can not buy gift for #{whom} user type. Aborted!"
    end
  end

  # Waits until element get tabindex attribute. It detects whether scroll finished or not
  def wait_for_scroll_to_finish
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    element = @browser.find_element xpath: TestConstants::SELECTION_BLOCK_XPATH
    wait.until { element.attribute('tabindex') == "-1" }      
  end
end
