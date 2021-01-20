# frozen_string_literal: true

class BackgroundSerializer
  include FastJsonapi::ObjectSerializer

  set_type :image

  set_id { nil }

  attributes :image_url, :location, :credit
end
