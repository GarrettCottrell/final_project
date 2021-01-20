# frozen_string_literal: true

class Weather
  attr_reader :current_weather, :daily_weather, :hourly_weather

  def initialize(weather_data)
 
    @current_weather = weather_data[:current]
    @daily_weather = weather_data[:daily]
    @hourly_weather = weather_data[:hourly]
  end

  def weather_at_eta
    @hourly_weather.map do |hourly|
      Time.at(hourly[:dt])
    end
   
    @hourly_weather
  end
end
