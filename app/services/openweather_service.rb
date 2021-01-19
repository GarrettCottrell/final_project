# frozen_string_literal: true

class OpenweatherService
  def self.conn
    Faraday.new(
          url: 'https://api.openweathermap.org/data/2.5/weather',
          params: {appid: ENV['APP_ID']}
        )
  end

  def self.open_weather(location)
    response = conn.get("?q=#{location}&units=imperial") 

    json = JSON.parse(response.body, symbolize_names: true)
    json
  end
end
