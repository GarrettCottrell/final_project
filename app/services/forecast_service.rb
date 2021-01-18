# frozen_string_literal: true

class ForecastService
  def self.conn
    Faraday.new(
          url: 'https://api.openweathermap.org/data/2.5/onecall',
          params: {appid: ENV['APP_ID']}
        )
  end

  def self.forecast(latitude, longitude)
    response = conn.get('?') do |req|
      req.params['lat'] = latitude
      req.params['lon'] = longitude
      req.params['exclude'] = 'alerts,minutely'
    end

    json = JSON.parse(response.body, symbolize_names: true)
    json
  end
end
