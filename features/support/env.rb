require 'rubygems'
require 'rspec'
require 'watir-webdriver'
require  Dir.pwd + '/features/support/balance.rb'
browser = Watir::Browser.new :chrome

Before do
  @browser = browser
end