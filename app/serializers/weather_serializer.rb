# frozen_string_literal: true

class WeatherSerializer
  include FastJsonapi::ObjectSerializer

  set_type :forecast

  set_id { nil }

  attributes :current_weather, :daily_weather, :hourly_weather
end
