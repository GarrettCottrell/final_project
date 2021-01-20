# frozen_string_literal: true

class MapQuestService
  def self.conn
    Faraday.new(
      url: 'http://www.mapquestapi.com',
      params: { key: ENV['CONSUMER_KEY'] }
    )
  end

  def self.coordinates(location)
    response = conn.get("/geocoding/v1/address?") do |req|
      req.params['location'] = location
    end
    json = JSON.parse(response.body, symbolize_names: true)
   
    json[:results][0][:locations][0]
  end

  def self.road_trip(data)

    response = conn.get("/directions/v2/route?") do |req|
      req.params['from'] = data[:origin]
      req.params['to'] = data[:destination]
    end
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
