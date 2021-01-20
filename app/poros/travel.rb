# frozen_string_literal: true

class Travel
  attr_reader :start_city, :end_city, :travel_time_pretty, :travel_time_functional

  def initialize(road_trip_data, data)
    @start_city = data[:origin]
    @end_city = data[:destination]
    @travel_time_pretty = road_trip_data[:route][:formattedTime]
    @travel_time_functional = road_trip_data[:route][:realTime]
  end

  def arrival_time
    leave_time = Time.now
    leave_time + @travel_time_functional
  end
end
