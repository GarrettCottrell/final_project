require 'rails_helper'

describe 'Weather service' do
  it 'Weather method' do
    response = WeatherService.weather(39.738453, -104.984856 )

    expect(response).to be_an(Hash)

    expect(response).to have_key(:current)
    expect(response[:current]).to be_a(Hash)
    expect(response[:current]).to have_key(:sunrise)
    expect(response[:current]).to have_key(:sunset)

    expect(response).to have_key(:hourly)
    expect(response[:hourly]).to be_an(Array)
    expect(response[:hourly][0]).to have_key(:temp)
    expect(response[:hourly][0]).to have_key(:pressure)

    expect(response).to have_key(:daily)
    expect(response[:daily]).to be_an(Array)
    expect(response[:daily][0]).to have_key(:pressure)
    expect(response[:daily][0]).to have_key(:humidity)
  end
end
