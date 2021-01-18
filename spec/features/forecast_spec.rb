require 'rails_helper'

describe "User can hit forecast endpoint", type: :request do
  it "returns json" do
    get '/api/v1/forecast?location=Denver,CO'
    forecast = JSON.parse(response.body, symbolize_names: true)

    expect(forecast).to be_a(Hash)

    expect(forecast[:current]).to be_a(Hash)
    expect(forecast[:current]).to have_key(:sunrise)

    expect(forecast[:hourly]).to be_an(Array)
    expect(forecast[:hourly][0]).to have_key(:temp)

    expect(forecast[:daily]).to be_an(Array)
    expect(forecast[:daily][0]).to have_key(:wind_speed)

    expect(forecast).to_not have_key(:minutely)
    expect(forecast).to_not have_key(:alerts)
  end
end
