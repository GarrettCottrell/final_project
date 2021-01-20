# frozen_string_literal: true

class Coordinates
  attr_reader :latitude, :longitude

  def initialize(data, to_and_from)
    
    @latitude = data[:latLng][:lat]
    @longitude = data[:latLng][:lng]
  end
end
