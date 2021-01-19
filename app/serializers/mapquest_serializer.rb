# frozen_string_literal: true

class MapquestSerializer
  include FastJsonapi::ObjectSerializer

  set_type :munchie

  set_id { nil }

  attributes :destination_city, :travel_time
end
