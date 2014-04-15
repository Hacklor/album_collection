require 'persistence/album_persistence'

class PersistenceFactory

  def self.get(name)
    persistence[name]
  end

  def self.persistence
    @@persistence ||= { albums: AlbumPersistence.new }
  end
end
