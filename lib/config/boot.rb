require 'sinatra'
require 'pry'

Dir["./lib/api/*.rb"].each { |f| require f }
