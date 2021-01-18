# frozen_string_literal: true

class ForecastSerializer
  include FastJsonapi::ObjectSerializer
  set_type :forecast  # optional
  set_id :null # optional
  attributes :current_weather, :daily_weather, :hourly_weather
end
