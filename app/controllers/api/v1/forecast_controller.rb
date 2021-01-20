# frozen_string_literal: true

module Api
  module V1
    class ForecastController < ApplicationController
      def index
        weather = WeatherFacade.weather(params['location'])
        render json: WeatherSerializer.new(weather).serializable_hash.to_json
      end
    end
  end
end
