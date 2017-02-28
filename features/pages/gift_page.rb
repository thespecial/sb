require 'page-object'
require_relative 'sections/choose_package_popup.rb'
require_relative 'sections/gift_recipient_popup.rb'
require_relative 'sections/choose_delivery_time_popup.rb'

class GiftPage
  include PageObject

  BASE_URL ||= 'https://scentbird.com'

  page_url(BASE_URL + '/gift')

  button(:buy_gift, :id => 'buyGiftNow')
  button(:buy_gift_for_her, :id => 'buyForHer')
  button(:buy_gift_for_him, :id => 'buyForHim')

  page_section(
    :choose_package_popup,
    ChoosePackagePopup,
    # :xpath => '//h3[contains(text(), "Choose the size ")]'
    :xpath => "//div[@class='PwhE'][contains(., 'Choose the size of your gift')]"
  )

  page_section(
    :recipient_popup,
    GiftRecipientPopup,
    # :css => '//h3[contains(text(), "Who is this gift for?")]'
    :xpath => "//div[@class='PwhE'][contains(., 'Who is this gift for?')]"
  )
  page_section(
    :delivery_time_popup,
    ChooseDeliveryTimePopup,
    # :css => '//h3[contains(text(), "Who is this gift for?")]'
    :xpath => "//div[@class='PwhE'][contains(., 'when do you want')]"
  )

  def buy_gift_for(whom)
    if whom == 'Him'
      self.buy_gift_for_him
    elsif whom == 'Her'
      self.buy_gift_for_her
    end
  end
end
