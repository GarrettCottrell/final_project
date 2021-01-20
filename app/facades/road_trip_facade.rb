# frozen_string_literal: true

class RoadTripFacade
  def self.road_trip(data)

    to_and_from = MapQuestService.road_trip(data)
    road_trip_data = RoadTrip.new(to_and_from, data)
    require 'pry'; binding.pry
  end
end