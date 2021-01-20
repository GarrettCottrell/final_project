require 'rails_helper'

describe 'Road trip endpoint' do
  it 'User can hit road trip endpoint' do
    user = User.create(email: 'garrett@whatever.com', password: 'password')

    body = {
      origin: 'Denver,CO',
      destination: 'Pueblo,CO',
      api_key: user.api_key
    }

    headers = { 'Content-Type' => 'application/json', 'Accept' => 'application/json' }
    post '/api/v1/road_trip', headers: headers, params: body.to_json
    road_trip = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(200)
    expect(road_trip[:data]).to be_a(Hash)
    expect(road_trip[:data][:id]).to eq(nil)
    expect(road_trip[:data][:type]).to be_a(String)
    expect(road_trip[:data][:type]).to eq('roadtrip')
    expect(road_trip[:data][:attributes]).to be_a(Hash)
    expect(road_trip[:data][:attributes][:start_city]).to be_a(String)
    expect(road_trip[:data][:attributes][:start_city]).to eq('Denver,CO')
    expect(road_trip[:data][:attributes][:end_city]).to be_a(String)
    expect(road_trip[:data][:attributes][:end_city]).to eq('Pueblo,CO')
    expect(road_trip[:data][:attributes][:travel_time_pretty]).to be_a(String)
    expect(road_trip[:data][:attributes][:arrival_time]).to be_a(String)
  end
end
