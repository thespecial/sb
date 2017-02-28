require 'page-object'

class ChoosePackagePopup
  include PageObject

  button(:package_44, :css => '#giftSize0Button')

  button(:package_84, :id => 'giftSize1Button')
  button(:package_164, :id => 'giftSize2Button')
  # h3(:title, :xpath => '//h3[contains(text(), "Choose the size ")]')

  # expected_element_visible(:title, 10, true)

  def select_package(package_id)
    if package_id == '44$'
      self.package_44
    elsif package_id == '84$'
      self.package_84
    elsif package_id == '164$'
      self.package_164
    end
  end
end
