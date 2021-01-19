# frozen_string_literal: true

module Api
  module V1
    class MunchiesController < ApplicationController
      def index
        conn = Faraday.new(
          url: 'https://www.mapquestapi.com/directions/v2/',
          params: { key: ENV['CONSUMER_KEY'] }
        )
         response = conn.get("route?from=#{params[:start]}&to=#{params[:end]}")
         json = JSON.parse(response.body, symbolize_names: true)

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
        require 'pry'; binding.pry
      end
    end
  end
end
