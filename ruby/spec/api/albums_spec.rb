require 'spec_helper'

describe "Albums" do

  let!(:service) { double }

  before do
    AlbumService.stub(:new).and_return(service)
  end

  context '/albums' do

    it 'delegates to service' do
      expect(service).to receive(:find_all)

      get '/albums'
    end

    it 'responds with ok with empty json' do
      service.stub(:find_all).and_return([])
      get '/albums'

      expect(last_response).to be_ok
      expect(last_response.body).to eq('[]')
    end

    it 'responds with a json string' do
      service.stub(:find_all).and_return( [ { id: 1, name: "Stones Grow Her Name", artist: "Sonata Arctica", year: 2012 } ] )
      get '/albums'

      expect(last_response).to be_ok
      expect(last_response.body).to eq('[{"id":1,"name":"Stones Grow Her Name","artist":"Sonata Arctica","year":2012}]')
    end

  end

end
