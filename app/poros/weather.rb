# frozen_string_literal: true

class Weather

  def initialize(weather_data)
    @current_weather_data = [weather_data[:current]]
    @daily_weather_data = weather_data[:daily].first(5)
    @hourly_weather_data = weather_data[:hourly].first(8)
  end

  def current_weather 
    {
      datetime: Time.at(@current_weather_data[0][:dt]),
      sunrise: Time.at(@current_weather_data[0][:sunrise]),
      sunset: Time.at(@current_weather_data[0][:sunset]),
      temperature: @current_weather_data[0][:temp],
      feels_like: @current_weather_data[0][:feels_like],
      humidity: @current_weather_data[0][:humidity],
      uvi: @current_weather_data[0][:uvi],
      visibillity: @current_weather_data[0][:visibility],
      conditions: @current_weather_data[0][:weather][0][:description],
      icon: @current_weather_data[0][:weather][0][:icon]
    }
  end

  def daily_weather
    @daily_weather_data.map do |daily|
      {
        date: Time.at(daily[:dt]),
        sunrise: Time.at(daily[:sunrise]),
        sunset: Time.at(daily[:sunset]),
        max_temp: daily[:temp][:max],
        min_temp: daily[:temp][:min],
        conditions: daily[:weather][0][:description],
        icon: daily[:weather][0][:icon]
      }
    end
  end

  def hourly_weather
    @hourly_weather_data.map do |hourly|
      {
        time: Time.at(hourly[:dt]),
        temperature: hourly[:temp],
        wind_speed: hourly[:wind_speed],
        wind_direction: hourly[:wind_deg],
        conditions: hourly[:weather][0][:description],
        icon: hourly[:weather][0][:icon]
      }
    end
  end
end
