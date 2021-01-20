# frozen_string_literal: true

class ImageService
  def self.conn
    Faraday.new(
          url: 'https://api.unsplash.com',
          params: { client_id: ENV['PHOTO_ID'] }
        )
  end

  def self.background(search_term)
    response = conn.get('/search/photos') do |req|
      req.params['per_page'] = 1
      req.params['query'] = search_term
    end

    json = JSON.parse(response.body, symbolize_names: true)
    json
  end
end
