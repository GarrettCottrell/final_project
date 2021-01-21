require 'rails_helper'

describe 'Travel' do 
  it 'has attributes' do
    road_trip_data = 
{:route=>
  {:hasTollRoad=>false,
   :hasBridge=>true,
   :boundingBox=>{:lr=>{:lng=>-104.605087, :lat=>38.265427}, :ul=>{:lng=>-104.98761, :lat=>39.738453}},
   :distance=>111.38,
   :hasTimedRestriction=>false,
   :hasTunnel=>false,
   :hasHighway=>true,
   :computedWaypoints=>[],
   :routeError=>{:errorCode=>-400, :message=>""},
   :formattedTime=>"01:44:22",
   :sessionId=>"6007fb61-02d3-5f21-02b4-3318-06a3511624b5",
   :hasAccessRestriction=>false,
   :realTime=>7066,
   :hasSeasonalClosure=>false,
   :hasCountryCross=>false,
   :fuelUsed=>5.5}}


   data = {:origin=>"Denver,CO", :destination=>"Pueblo,CO", :api_key=>"zCav77t7aRYoRroXRppG1Uaj"}
    travel = RoadTrip.new(road_trip_data, data)

    expect(travel.travel_time).to eq('01:44:22')
    expect(travel.travel_time_functional).to eq(7066)
    expect(travel.end_city).to eq('Pueblo,CO')
    expect(travel.start_city).to eq('Denver,CO')
  end
end
