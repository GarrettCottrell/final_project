# frozen_string_literal: true

module Api
  module V1
    class MunchiesController < ApplicationController
      def index
        mapquest = MapquestFacade.map_quest(params[:start], params[:end])
       require 'pry'; binding.pry




        conn = Faraday.new('https://api.yelp.com') do |f|
          f.headers['Authorization'] = ENV['YELP_API_KEY']
        end

        response = conn.get('/v3/businesses/search?') do |f|
          f.params[:location] = params[:end]
          f.params[:categories] = params[:food]
        end
        json = JSON.parse(response.body, symbolize_names: true)

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
