require 'json'
require 'services/album_service'

get '/albums' do
  albums = AlbumService.new.find_all
  albums.to_json
end

post '/album' do
end
