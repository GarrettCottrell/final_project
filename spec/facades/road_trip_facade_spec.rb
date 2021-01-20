require 'rails_helper'

describe 'road trip facade' do
  it 'create road trip object' do
    data = {:origin=>"Denver,CO", :destination=>"Pueblo,CO", :api_key=>"zCav77t7aRYoRroXRppG1Uaj"}
    road_trip = RoadTripFacade.road_trip(data)

    expect(road_trip.end_city).to eq('Pueblo,CO')
    expect(road_trip.start_city).to eq('Denver,CO')
    expect(road_trip.travel_time_functional).to be_an(Integer)
    expect(road_trip.travel_time_pretty).to be_a(String)
    expect(road_trip.travel_time_pretty).to eq('01:44:22')
  end
end
