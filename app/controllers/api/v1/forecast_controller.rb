# frozen_string_literal: true

module Api
  module V1
    class ForecastController < ApplicationController
      def index
        coordinates = CoordinatesFacade.coordinates(params['location'])
        forecast = ForecastFacade.forecast(coordinates.latitude, coordinates.longitude)

        render json: ForecastSerializer.new(forecast).serializable_hash.to_json
      end
    end
  end
end
