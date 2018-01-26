ENV["RACK_ENV"] ||= "test"

require File.expand_path("../../config/environment", __FILE__)
require 'rspec'
require 'capybara/dsl'
require 'capybara/rspec'

Capybara.app = LittleShopApp
Capybara.save_and_open_page_path = 'tmp/capybara'

RSpec.configure do |c|
  c.include Capybara::DSL
end

require 'bundler'
Bundler.require(:default, :test)
