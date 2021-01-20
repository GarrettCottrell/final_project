# frozen_string_literal: true

class RoadTrip
  attr_reader :start_city, :end_city, :travel_time

  def initialize(road_trip_data, data)
    @start_city = data[:origin]
    @end_city = data[:destination]
    @travel_time = road_trip_data[:route][:formattedTime]
  end
end
