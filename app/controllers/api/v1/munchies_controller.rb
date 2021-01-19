# frozen_string_literal: true

module Api
  module V1
    class MunchiesController < ApplicationController
      def index
        mapquest = MapquestFacade.map_quest(params[:start], params[:end])

        yelp = YelpFacade.yelp(params[:end], params[:food])
       
        openweather = OpenweatherFacade.open_weather(params[:end])
        
        render json: {
          directions: MapquestSerializer.new(mapquest),
          restaurant: YelpSerializer.new(yelp),
          forecast: WeatherSerializer.new(openweather)
        } 
      end
    end
  end
end
