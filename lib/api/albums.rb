require 'services/album_service'


get '/albums' do
  @service ||= AlbumService.new
  @service.find_all
end
