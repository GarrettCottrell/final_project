# frozen_string_literal: true

class RoadTripFacade
  def self.road_trip(from, to)
    data = RoadTripService.road_trip(from, to)
    RoadTrip.new(data)
  end
end
