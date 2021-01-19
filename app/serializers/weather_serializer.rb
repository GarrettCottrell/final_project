# frozen_string_literal: true

class WeatherSerializer
  include FastJsonapi::ObjectSerializer

  set_type :munchie

  set_id { nil }

  attributes :forecast
end
