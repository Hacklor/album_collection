require 'sinatra'
require 'pry'

$ROOT_PATH = "#{File.dirname(__FILE__)}/.."
$LOAD_PATH << $ROOT_PATH
Dir["./lib/api/*.rb"].each { |f| require f }

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
  content_type :json
end
