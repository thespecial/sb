require 'selenium-webdriver'
require 'cucumber'
require_relative '../pages/gift_page'
require 'page-object/page_factory'
World(PageObject::PageFactory)

Before do
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.window.move_to(0, 0)
  @browser.manage.window.resize_to(1366, 768)
end

After do
  @browser.quit
end

def current_url
  @browser.current_url
end
