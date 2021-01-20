require 'rails_helper'

describe 'mapquest service' do
  it 'coordinates method' do
    response = MapQuestService.coordinates('Denver,CO')

    expect(response).to be_a(Hash)
    expect(response[:latLng]).to be_a(Hash)
    expect(response[:latLng][:lat]).to be_a(Float)
    expect(response[:latLng][:lat]).to eq(39.738453)

    expect(response[:latLng][:lng]).to be_a(Float)
    expect(response[:latLng][:lng]).to eq(-104.984853)
  end

  it 'road_trip method' do 
    data = {:origin=>"Denver,CO", :destination=>"Pueblo,CO", :api_key=>"zCav77t7aRYoRroXRppG1Uaj"}

    response = MapQuestService.road_trip(data)

    expect(response).to be_a(Hash)

    expect(response[:route][:formattedTime]).to be_a(String)
    expect(response[:route][:formattedTime]).to eq("01:44:22")
    expect(response[:route][:realTime]).to be_an(Integer)
  end
end
