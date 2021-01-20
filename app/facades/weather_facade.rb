# frozen_string_literal: true

class WeatherFacade
  def self.weather(location)
    coordinate_data = MapQuestService.coordinates(location)
    coordinates = Coordinates.new(coordinate_data)
    weather_data = WeatherService.weather(coordinates.latitude, coordinates.longitude)
    Weather.new(weather_data)
  end
end
