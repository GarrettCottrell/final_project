require 'rails_helper'

describe 'Forecast endpoint' do
  it 'Forecast endpoint returns json' do
    get '/api/v1/forecast?location=Denver,CO'

    forecast = JSON.parse(response.body, symbolize_names: true)

    expect(forecast).to be_a(Hash)

    expect(forecast[:data][:attributes][:current_weather]).to be_a(Hash)
    expect(forecast[:data][:attributes][:current_weather]).to have_key(:sunrise)

    expect(forecast[:data][:attributes][:hourly_weather]).to be_an(Array)
    expect(forecast[:data][:attributes][:hourly_weather][0]).to have_key(:temperature)

    expect(forecast[:data][:attributes][:daily_weather]).to be_an(Array)
    expect(forecast[:data][:attributes][:daily_weather][0]).to have_key(:conditions)

    expect(forecast[:data][:attributes]).to_not have_key(:minutely)
    expect(forecast[:data][:attributes]).to_not have_key(:alerts)
  end
end
