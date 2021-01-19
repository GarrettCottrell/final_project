
class YelpService
  def self.conn
    Faraday.new('https://api.yelp.com') do |f|
      f.headers['Authorization'] = ENV['YELP_API_KEY']
    end
  end

  def self.yelp(end_location, food)
    response = conn.get('/v3/businesses/search?') do |f|
      f.params[:location] = end_location
      f.params[:categories] = food
    end

    json = JSON.parse(response.body, symbolize_names: true)
    json
  end
end
