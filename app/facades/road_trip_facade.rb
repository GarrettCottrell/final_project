# frozen_string_literal: true

class RoadTripFacade
  def self.road_trip(data)
    to_and_from = MapQuestService.road_trip(data)
    road_trip_object = Travel.new(to_and_from, data)

    coordinate_data = MapQuestService.coordinates(road_trip_object.end_city)
    coordinates = Coordinates.new(coordinate_data, data)

    weather_data = WeatherService.destination_weather(coordinates.latitude, coordinates.longitude)
    weather_object = Weather.new(weather_data, road_trip_object)
  end
end