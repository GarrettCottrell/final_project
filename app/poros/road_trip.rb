# frozen_string_literal: true

class RoadTrip
  attr_reader :start_city, :end_city, :travel_time, :travel_time_functional

  def initialize(data, road_trip_data = nil, weather_service_data = nil)

    @start_city = data[:origin]
    @end_city = data[:destination]

    if weather_service_data && road_trip_data != nil
      @travel_time = road_trip_data[:route][:formattedTime]
      @travel_time_functional = road_trip_data[:route][:realTime]
      @hour = @travel_time_functional/3600.0
      @weather_service_data = weather_service_data
      @road_trip_data = road_trip_data
    else
      @start_city = data[:origin]
      @end_city = data[:destination]
      @travel_time = 'Impossible'
    end
  end

  def arrival_time
    if @road_trip_data[:route][:routeError] != {:errorCode=>2, :message=>""}

      leave_time = Time.now
      leave_time + @travel_time_functional
    else
      ''
    end
  end

  def weather_at_eta
    if @road_trip_data != nil

    {
      temperature: @weather_service_data[:hourly][@hour + 1][:temp],
      conditions: @weather_service_data[:hourly][@hour + 1][:weather][0][:description]
    }
    else
      ''
    end
  end
end
