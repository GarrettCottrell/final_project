# frozen_string_literal: true

module Api
  module V1
    class RoadTripController < Api::ApiController
      def index
        road_trip_data = JSON.parse(request.body.read, symbolize_names: true)

        conn = Faraday.new(
          url: 'https://www.mapquestapi.com/directions/v2/',
          params: { key: ENV['CONSUMER_KEY'] }
        )
        response = conn.get("route?from=#{road_trip_data[:origin]}&to=#{road_trip_data[:destination]}")
        require 'pry'; binding.pry
      end
    end
  end
end
