require 'rspec'

describe 'User Navigation' do

  before (:all) do
    @driver = Selenium::WebDriver.for(:firefox)
    @driver.manage.window.maximize
    @driver.navigate.to'http://dev4.sols.com/register#step0'

  end


  it 'should On line shopping' do




  end
end