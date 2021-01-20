require 'rails_helper'

describe 'weather facade' do
  it 'create weather object' do
    weather = WeatherFacade.weather('Denver,CO')

    expect(weather).to be_a(Weather)
    expect(weather.daily_weather).to be_an(Array)
    expect(weather.hourly_weather).to be_an(Array)
  end
end
