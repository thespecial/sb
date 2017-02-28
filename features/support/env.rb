require 'cucumber'
require 'page-object'
require 'page-object/page_factory'
require 'rspec/expectations'
require 'selenium-webdriver'
require_relative 'test_constants'

project_root = File.dirname(File.absolute_path(__FILE__))
Dir.glob(project_root + '/../pages/sections/*') { |file| require_relative file }

World(PageObject::PageFactory)

def current_url
  @browser.current_url
end

Before do
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.window.move_to(0, 0)
  @browser.manage.window.resize_to(1366, 768)
  @browser.manage.timeouts.implicit_wait = 3
end

After do
  @browser.quit
end

