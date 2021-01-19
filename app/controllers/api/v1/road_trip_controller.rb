# frozen_string_literal: true

module Api
  module V1
    class RoadTripController < Api::ApiController
      def index
        road_trip_data = JSON.parse(request.body.read, symbolize_names: true)

        road_trip = RoadTripFacade.road_trip(road_trip_data[:origin], road_trip_data[:destination])
      end
    end
  end
end
