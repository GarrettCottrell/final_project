# frozen_string_literal: true

class RoadTrip
  attr_reader :start_city, :end_city, :travel_time, :weather_at_eta

  def initialize(data)
    @travel_time = data[:route][:formattedTime]
  end
end
