# frozen_string_literal: true

# added functionality to output both background image and forecast in one payload

module Api
  module V1
    class ForecastController < ApplicationController
      def index
        coordinates = CoordinatesFacade.coordinates(params['location'])
        forecast = ForecastFacade.forecast(coordinates.latitude, coordinates.longitude)
        background = BackgroundFacade.background(params['query'])

        render json: {
          background: BackgroundSerializer.new(background),
          forecast: ForecastSerializer.new(forecast)
        }
      end
    end
  end
end
