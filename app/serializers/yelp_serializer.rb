# frozen_string_literal: true

class YelpSerializer
  include FastJsonapi::ObjectSerializer

  set_type :munchie

  set_id { nil }

  attributes :restaurant
end
