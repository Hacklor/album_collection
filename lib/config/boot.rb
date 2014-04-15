require 'sinatra'
require 'pry'

$ROOT_PATH = "#{File.dirname(__FILE__)}/.."
$LOAD_PATH << $ROOT_PATH
Dir["./lib/api/*.rb"].each { |f| require f }

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
  content_type :json
end

#
# Add a few albums to the database
#
albums_persistence = PersistenceFactory.get(:albums)
albums_persistence.add( { id: 1, name: "The Power Within", artist: "Dragonforce", year: 2012 } )
albums_persistence.add( { id: 2, name: "Stones Grow Her Name", artist: "Sonata Arctica", year: 2012 } )
albums_persistence.add( { id: 3, name: "The New Black", artist: "Strapping Young Lad", year: 2006 } )
albums_persistence.add( { id: 4, name: "Icon", artist: "Rush", year: 2010 } )
albums_persistence.add( { id: 5, name: "Killers", artist: "Iron Maiden", year: 1981 } )
