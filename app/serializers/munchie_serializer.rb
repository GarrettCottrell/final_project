# frozen_string_literal: true

class MunchieSerializer
  include FastJsonapi::ObjectSerializer

  set_type :munchie

  set_id { nil }

  attributes :destination_city, :travel_time, :forecast, :restaurant
end
