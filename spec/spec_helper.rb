ENV['RACK_ENV'] = "test"

require 'config/boot'

require 'bundler'
Bundler.require :default, :test

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

def app
  Sinatra::Application
end
