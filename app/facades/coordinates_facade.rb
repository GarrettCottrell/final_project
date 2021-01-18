# frozen_string_literal: true

class CoordinatesFacade
  def self.coordinates(location)
    data = CoordinatesService.coordinates(location)

    Coordinates.new(data)
  end
end
