require 'spec_helper'

describe AlbumService do

  context '#find_all' do

    it 'delegates to album persistence' do
      persistence = double
      album_service.new(persistence)
      expect(persistence).to receive(:find_all)

      album_service.find_all
    end

  end
end
