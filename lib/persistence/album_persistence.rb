class AlbumPersistence

  attr_reader :albums
  def initialize
    @albums = {}
  end

  def add(album)
    album_id = album[:id]
    unless albums[album_id].nil?
      raise AlreadyExistsError
    end

    albums[album_id] = album
  end

  def get(album_id)
    if albums[album_id].nil?
      raise NotFoundError
    end

    albums[album_id].clone
  end

  def find_all
    albums.values.clone
  end

end

class NotFoundError < RuntimeError
end

class AlreadyExistsError < RuntimeError
end
