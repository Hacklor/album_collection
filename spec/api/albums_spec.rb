require 'spec_helper'

describe "Albums" do

  context '/albums' do

    it 'returns all albums' do
      service = double
      expect(AlbumService).to receive(:new).and_return(service)
      expect(service).to receive(:find_all)

      get '/albums'

      expect(last_response).to be_ok
    end

  end

end
