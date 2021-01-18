# frozen_string_literal: true

class ForecastFacade
  def self.forecast(latitude, longitude)
    data = ForecastService.forecast(latitude, longitude)
    Forecast.new(data)
  end
end
