# frozen_string_literal: true

module Api
  module V1
    class MunchiesController < ApplicationController
      def index
        mapquest = MapquestFacade.map_quest(params[:start], params[:end])
    
        yelp = YelpFacade.yelp(params[:end], params[:food])

        conn = Faraday.new(
          url: 'https://api.openweathermap.org/data/2.5/weather',
          params: {appid: ENV['APP_ID']}
        )
        response = conn.get("?q=#{params[:end]}&units=imperial")
        json = JSON.parse(response.body, symbolize_names: true)
        
      end
    end
  end
end
