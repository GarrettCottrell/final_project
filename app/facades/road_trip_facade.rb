# frozen_string_literal: true

class RoadTripFacade
  def self.road_trip(data)
    road_trip_service_data = MapQuestService.road_trip(data)

    if road_trip_service_data[:route][:routeError] != {:errorCode=>2, :message=>""}

      coordinates_data = MapQuestService.coordinates(data[:destination])
      weather_service_data = WeatherService.weather(coordinates_data[:latLng][:lat], coordinates_data[:latLng][:lng])
      RoadTrip.new(data, road_trip_service_data, weather_service_data)
    else
      RoadTrip.new(data)
    end
  end
end
