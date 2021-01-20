# frozen_string_literal: true

class WeatherService
  def self.conn
    Faraday.new(
      url: 'https://api.openweathermap.org',
      params: { appid: ENV['APP_ID'] }
    )
  end

  def self.weather(latitude, longitude)
    response = conn.get('/data/2.5/onecall?') do |req|
      req.params['lat'] = latitude
      req.params['lon'] = longitude
      req.params['exclude'] = 'alerts'
    end

    JSON.parse(response.body, symbolize_names: true)
  end
end
