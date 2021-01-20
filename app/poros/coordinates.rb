# frozen_string_literal: true

class Coordinates
  attr_reader :latitude, :longitude

  def initialize(coordinate_data)
    @latitude = coordinate_data[:latLng][:lat]
    @longitude = coordinate_data[:latLng][:lng]
  end
end
