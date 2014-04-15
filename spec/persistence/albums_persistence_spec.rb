require 'spec_helper'

describe AlbumPersistence do

  let!(:album) do
    { id: 1, name: "Icon", artist: "Rush", year: 2010 }
  end

  context '#add' do

    it 'adds an album' do
      subject.add(album)

      found_album = subject.get(1)
      expect(found_album).to eq(album)
    end

    it 'throws an error when album with same id already added' do
      subject.add(album)

      expect {
        subject.add(album)
      }.to raise_error AlreadyExistsError
    end

  end

  context '#get' do

    it 'throws an NotFoundError when album not found' do
      expect {
        subject.get(1)
      }.to raise_error NotFoundError
    end

    it 'returns the album' do
      subject.add(album)

      found_album = subject.get(1)
      expect(found_album).to eq(album)
    end

  end

  context '#find_all' do

    it 'returns an empty collection when nothing added' do
      albums = subject.find_all
      expect(albums).to be_empty
    end

    it 'returns an array of albums' do
      album2 = { id: 2, name: "Stones Grow Her name", artist: "Sonata Arctica", year: "2012" }

      subject.add(album)
      subject.add(album2)

      albums = subject.find_all
      expect(albums.size).to eq(2)
      expect(albums).to include album
      expect(albums).to include album2
    end

  end

end
