require 'persistence/album_persistence'

class AlbumService

  attr_reader :album_persistence
  def initialize(persistence = AlbumPersistence.new)
    @album_persistence = persistence
  end

  def find_all
    @album_persistence.find_all
  end

end
