require 'rails_helper'

describe 'Munchies endpoint' do
  it 'Munchies endpoint returns json' do
    get '/api/v1/munchies?start=denver,co&end=pueblo,co&food=chinese'

    munchies = JSON.parse(response.body, symbolize_names: true)

    expect(munchies).to be_a(Hash)

    expect(munchies[:data][:attributes][:destination_city]).to eq("Pueblo, CO")
    expect(munchies[:data][:attributes][:travel_time]).to eq('1 hours 48 min')

    expect(munchies[:data][:attributes][:forecast]).to be_a(Hash)
    expect(munchies[:data][:attributes][:forecast]).to have_key(:summary)
    expect(munchies[:data][:attributes][:forecast]).to have_key(:temperature)

    expect(munchies[:data][:attributes][:restaurant]).to be_a(Hash)
    expect(munchies[:data][:attributes][:restaurant]).to have_key(:name)
    expect(munchies[:data][:attributes][:restaurant]).to have_key(:address)
  end
end
