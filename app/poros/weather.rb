# frozen_string_literal: true

class Weather
  attr_reader :current_weather, :daily_weather, :hourly_weather

  def initialize(data, road_trip_object)
    @current_weather = data[:current]
    @daily_weather = data[:daily]
    @hourly_weather = data[:hourly]
    require 'pry'; binding.pry
  end

  def weather_at_eta
    @hourly_weather.map do |hourly|
      Time.at(hourly[:dt])
    end
   
    @hourly_weather
  end
end
