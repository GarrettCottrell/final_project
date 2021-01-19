# frozen_string_literal: true

module Api
  module V1
    class MunchiesController < ApplicationController
      def index
        mapquest = MapquestFacade.map_quest(params[:start], params[:end])

        yelp = YelpFacade.yelp(params[:end], params[:food])

        openweather = OpenweatherFacade.open_weather(params[:end])
        require 'pry'; binding.pry
      end
    end
  end
end
