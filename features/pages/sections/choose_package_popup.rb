# Choose Gift popup as section
class ChoosePackagePopup
  include PageObject

  button(:package_44,  id: TestConstants::SMALL_PACKAGE_ID)
  button(:package_84,  id: TestConstants::MEDIUM_PACKAGE_ID)
  button(:package_164, id: TestConstants::LARGE_PACKAGE_ID)
  div(:popup,          xpath: TestConstants::CHOOSE_PACKAGE_POPUP_XPATH)

  # Going to check that element is visible. Expect element to be present, in other case - expception
  expected_element_visible(:popup, 10, true)

  def select_package(package_id)
    if package_id == '44$'
      self.package_44
    elsif package_id == '84$'
      self.package_84
    elsif package_id == '164$'
      self.package_164
    else
      raise "Cannot choose Package #{package_id}. Aborted!"
    end
  end
end
