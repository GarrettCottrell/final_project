# frozen_string_literal: true

class OpenweatherFacade
  def self.open_weather(q)
    data = OpenweatherService.open_weather(q)
    Openweather.new(data)
  end
end
