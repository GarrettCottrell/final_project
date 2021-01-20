require 'rails_helper'

describe 'Coordinate' do 
  it 'has attributes' do


coordinate_data = {:street=>"",
 :adminArea6=>"",
 :adminArea6Type=>"Neighborhood",
 :adminArea5=>"Denver",
 :adminArea5Type=>"City",
 :adminArea4=>"Denver County",
 :adminArea4Type=>"County",
 :adminArea3=>"CO",
 :adminArea3Type=>"State",
 :adminArea1=>"US",
 :adminArea1Type=>"Country",
 :postalCode=>"",
 :geocodeQualityCode=>"A5XAX",
 :geocodeQuality=>"CITY",
 :dragPoint=>false,
 :sideOfStreet=>"N",
 :linkId=>"282041090",
 :unknownInput=>"",
 :type=>"s",
 :latLng=>{:lat=>39.738453, :lng=>-104.984853},
 :displayLatLng=>{:lat=>39.738453, :lng=>-104.984853},
 :mapUrl=>
  "http://www.mapquestapi.com/staticmap/v5/map?key=oM01DHH8yVjSor10aejvKlYc1Gs2Avsr&type=map&size=225,160&locations=39.738453,-104.984853|marker-sm-50318A-1&scalebar=true&zoom=12&rand=71855523"}

coordinates = Coordinates.new(coordinate_data)

expect(coordinates.latitude).to eq(39.738453)
expect(coordinates.longitude).to eq(-104.984853)

  end
end
