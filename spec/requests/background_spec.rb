require 'rails_helper'

describe 'Backgrounds endpoint' do
  it 'Backgrounds endpoint returns json', :vcr do
    get '/api/v1/backgrounds?query=Denver,CO'

    background = JSON.parse(response.body, symbolize_names: true)

    expect(background).to be_a(Hash)

    expect(background[:data][:attributes][:image_url]).to be_a(String)
  end
end
