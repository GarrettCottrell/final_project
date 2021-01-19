
class MapquestService
  def self.conn
    Faraday.new(
          url: 'https://www.mapquestapi.com/directions/v2/',
          params: { key: ENV['CONSUMER_KEY'] }
        )
  end

  def self.map_quest(from, to)
    response = conn.get('route?') do |req|
      req.params['from'] = from
      req.params['to'] = to
    end

    json = JSON.parse(response.body, symbolize_names: true)
    json
  end
end