module TestConstants
  # Base URL
  BASE_URL              ||= 'https://scentbird.com'
  BUY_NOW_BUTTON_ID     ||= 'buyGiftNow';

  # Block where user can choose Him/Her  
  SELECTION_BLOCK_XPATH ||= "//*[@id='redux-mount']/div/div[1]/div/div[1]/div/div[3]"
  BUY_FOR_HER_BUTTON_ID ||= 'buyForHer';
  BUY_FOR_HIM_BUTTON_ID ||= 'buyForHim';
  FOR_HIM               ||= 'Him'
  FOR_HER               ||= 'Her'

  # Gift recipient popup
  GIFT_RECIPIENT_POPUP_XPATH ||= "//div[@class='PwhE'][contains(., 'Who is this gift for?')]"
  GIFT_RECIPIENT_NAME_ID     ||= 'giftModalRecipientName' 
  GIFT_RECIPIENT_EMAIL_ID    ||= 'giftModalRecipientEmail' 
  GIFT_RECIPIENT_MESSAGE_ID  ||= 'giftModalPersonalMessage' 
  GIFT_NEXT_BUTTON_ID        ||= 'giftPersonNextButton' 

  # Choose package popup
  CHOOSE_PACKAGE_POPUP_XPATH ||= "//div[@class='PwhE'][contains(., 'Choose the size of your gift')]"
  SMALL_PACKAGE_ID           ||= "giftSize0Button"
  MEDIUM_PACKAGE_ID          ||= "giftSize1Button"
  LARGE_PACKAGE_ID           ||= "giftSize2Button"

  # Delivery time popup
  DELIVERY_TIME_POPUP_XPATH ||= "//div[@class='PwhE'][contains(., 'when do you want')]"
  NEXT_BUTTON_ID            ||= 'giftPersonNextButton'
  SELECT_DATE_BUTTON_ID     ||= 'giftDateButton'
  SEND_NOW_BUTTON_ID 	     ||= 'giftRightNowButton'
end
