#takes in a location, converts to lat/long coordinates and returns restaurants
#can also take a location
# frozen_string_literal: true

module Api
  module V1
    class YelpController < ApplicationController
      def index
        coordinates = CoordinatesFacade.coordinates(params['location'])
        forecast = ForecastFacade.forecast(coordinates.latitude, coordinates.longitude)
        conn = Faraday.new('https://api.yelp.com') do |f|
          f.headers['Authorization'] = ENV['YELP_API_KEY']
        end
        response = conn.get('/v3/businesses/search?') do |f|
          f.params[:latitude] = coordinates.latitude
          f.params[:longitude] = coordinates.longitude

        end
        parsed_json = JSON.parse(response.body, symbolize_names: true)

        parsed_json[:businesses]
        render json: ForecastSerializer.new(forecast).serializable_hash.to_json

      end
    end
  end
end
