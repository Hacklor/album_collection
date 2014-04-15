require 'spec_helper'

describe AlbumService do

  context '#find_all' do

    it 'delegates to album persistence' do
      persistence = double
      expect(AlbumPersistence).to receive(:new).and_return(persistence)
      expect(persistence).to receive(:find_all)

      subject.find_all
    end

  end
end
