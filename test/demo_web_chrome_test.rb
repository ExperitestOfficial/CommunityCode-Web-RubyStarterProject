require 'test/unit'
require_relative 'test_utils'
require 'selenium-webdriver'

class DemoWebChromeTest < Test::Unit::TestCase
  def setup
    options = Selenium::WebDriver::Options.chrome # Use a different options class to run on a different browser
    options.add_option("experitest:testName", 'Demo Bank Chrome')
    options.add_option("experitest:accessKey", TestUtils.get_access_key)

    @driver = Selenium::WebDriver.for(:remote, :url => TestUtils.get_url, capabilities: options)
  end

  def test_DemoBank
    @driver.navigate.to "https://demo-bank.ct.digital.ai/"

    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until{@driver.find_element(:id => 'login')}

    @driver.find_element(:xpath, "//*[@data-auto='username']//input").send_keys('company')
    @driver.find_element(:xpath, "//*[@data-auto='password']//input").send_keys('company')
    @driver.find_element(:xpath, "//*[@data-auto='login']").click

    @driver.find_element(:xpath, "//*[@data-auto='transfer-funds']").click

    @driver.find_element(:xpath, "//input[@name='NAME']").send_keys('John')
    @driver.find_element(:xpath, "//input[@name='PHONE']").send_keys('1-234-5678')
    @driver.find_element(:xpath, "//input[@name='AMOUNT']").send_keys('1000')
    @driver.find_element(:xpath, "//*[@data-auto='country']").click
    @driver.find_element(:xpath, "//*[text()='India']").click
    @driver.find_element(:xpath, "//*[@data-auto='transfer-button']").click

  end

  def teardown
    print 'Report URL: ' + @driver.capabilities['reportUrl'].to_s
    @driver.quit
  end
end