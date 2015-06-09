require 'rspec'
require 'Selenium-Webdriver'


describe 'UI Functional Testing' do

  before (:all) do
    @driver = Selenium::WebDriver.for(:firefox)
    @driver.manage.window.maximize
    @driver.navigate.to'http://dev4.sols.com/register#step0'

  end

  it 'should Provider Sign Up' do
puts 'Sign Up'
    @driver.find_element(:name, "user[email]").clear
    @driver.find_element(:name, "user[email]").send_keys "qa382@sols.com"
    @driver.find_element(:id, "sols-pw").clear
    @driver.find_element(:id, "sols-pw").send_keys "sols1sols1"
    @driver.find_element(:name, "user[confirm_password]").clear
    @driver.find_element(:name, "user[confirm_password]").send_keys "sols1sols1"
    puts @driver.title
    @driver.find_element(:css, "button.create-account.step-style").click
    puts @driver.title
    sleep (3)
puts 'Profile Page'
    @driver.find_element(:name, "user[first_name]").clear
    @driver.find_element(:name, "user[first_name]").send_keys "qa343"
    @driver.find_element(:name, "user[last_name]").clear
    @driver.find_element(:name, "user[last_name]").send_keys "sols342"
    @driver.find_element(:name, "reseller_info[reseller_business_phone]").clear
    @driver.find_element(:name, "reseller_info[reseller_business_phone]").send_keys "9735575158"
   sleep(4)
    @driver.find_element(:id, "default-0").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "country-0")).select_by(:text, "United States")
    @driver.find_element(:css, "option[value=\"US\"]").click
    @driver.find_element(:name, "address[0][street_1]").clear
    @driver.find_element(:name, "address[0][street_1]").send_keys "17 qa testing"
    @driver.find_element(:name, "address[0][city]").clear
    @driver.find_element(:name, "address[0][city]").send_keys "Sols city"
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "address[0][state]")).select_by(:text, "New Jersey")
    @driver.find_element(:css, "option[value=\"NJ\"]").click
    @driver.find_element(:id, "postal-0").clear
    @driver.find_element(:id, "postal-0").send_keys "07522"
    sleep(2)
    @driver.find_element(:css, "span.repeater").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "country-1")).select_by(:text, "United States")
    @driver.find_element(:css, "#country-1 > option[value=\"US\"]").click
    @driver.find_element(:name, "address[1][street_1]").clear
    @driver.find_element(:name, "address[1][street_1]").send_keys "17 qa testing 2"
    @driver.find_element(:name, "address[1][city]").clear
    @driver.find_element(:name, "address[1][city]").send_keys "Sols city 2"
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "address[1][state]")).select_by(:text, "New Jersey")
    @driver.find_element(:css, "select[name=\"address[1][state]\"] > option[value=\"NJ\"]").click
    @driver.find_element(:id, "postal-1").clear
    @driver.find_element(:id, "postal-1").send_keys "07512"
    sleep(2)
puts 'Practice Page'
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "reseller_info[describe_as]")).select_by(:text, "Physical Therapist")
    @driver.find_element(:css, "option[value=\"4\"]").click
    @driver.find_element(:name, "reseller_info[school]").clear
    @driver.find_element(:name, "reseller_info[school]").send_keys "NJit testing"
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "reseller_info[graduation_date][month]")).select_by(:text, "June")
    @driver.find_element(:css, "select[name=\"reseller_info[graduation_date][month]\"] > option[value=\"6\"]").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "reseller_info[graduation_date][year]")).select_by(:text, "2007")
    @driver.find_element(:css, "option[value=\"2007\"]").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "reseller_info[number_of_patients]")).select_by(:text, "31+")
    @driver.find_element(:css, "option[value=\"31+\"]").click
    @driver.find_element(:id, "contract-file-upload").send_keys "/Users/golamhassan/Desktop/Screen_Shot.png"
    #@driver.find_element(:id, "contract-file-upload").click
    #@driver.find_element(:id, "html5_19nafdseq1v8i1vi1fne15rrg4i3").clear

   # @driver.find_element(:id, "html5_19nafdseq1v8i1vi1fne15rrg4i3").send_keys "/Users/golamhassan/Desktop/Screen_Shot.png"
    sleep(2)
    @driver.find_element(:xpath, "//button[@value='continue']").click
    sleep(2)
puts 'Providers Page'
    @driver.find_element(:name, "practice[practice_name]").clear
    @driver.find_element(:name, "practice[practice_name]").send_keys "qa368 sols inc"
    @driver.find_element(:name, "practice[website]").clear
    @driver.find_element(:name, "practice[website]").send_keys "www.qa368sols.com"
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "provider-type")).select_by(:text, "Partnership")
    @driver.find_element(:css, "option[value=\"3\"]").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "provider-range")).select_by(:text, "11-20")
    @driver.find_element(:css, "option[value=\"11-20\"]").click
    sleep(2)
    @driver.find_element(:id, "tax-1").clear
    @driver.find_element(:id, "tax-1").send_keys "12"
    @driver.find_element(:id, "tax-2").clear
    @driver.find_element(:id, "tax-2").send_keys "1232110"
    @driver.find_element(:css, "button.step-action").click
sleep(2)
puts 'Package Page'
    @driver.find_element(:css, "span.repeater").click
    @driver.find_element(:name, "invite[0][first_name]").clear
    @driver.find_element(:name, "invite[0][first_name]").send_keys "qa368ap"
    @driver.find_element(:name, "invite[0][last_name]").clear
    @driver.find_element(:name, "invite[0][last_name]").send_keys "solsap"
    @driver.find_element(:name, "invite[0][email]").clear
    @driver.find_element(:name, "invite[0][email]").send_keys "qa368ap@sols.com"
    @driver.find_element(:css, "button.step-action").click
    @driver.find_element(:id, "sols-promo-code").clear
    @driver.find_element(:id, "sols-promo-code").send_keys "doctor"
    @driver.find_element(:id, "sols-promo").click
    @driver.find_element(:css, "button.step-action").click
    sleep(2)
    puts @driver.title
puts 'Contracts Page'
    @driver.find_element(:name, "practice[contract_signed_by]").clear
    @driver.find_element(:name, "practice[contract_signed_by]").send_keys "qa368 sols"
    @driver.find_element(:name, "practice[contract_telephone]").clear
    @driver.find_element(:name, "practice[contract_telephone]").send_keys "9735575158"
    sleep(2)
    puts @driver.title
    @driver.find_element(:css, "button.step-action").click
    sleep(2)
    @driver.find_element(:css, "button.mfp-close").click
  end
  after (:all) do
    puts 'The Provider has been signed up successfully '
    @driver.quit
  end

end