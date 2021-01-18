module Api
  module V1
    class ForecastController < ApplicationController
      def index
        conn = Faraday.new(
          url: 'http://www.mapquestapi.com',
            params: { key: ENV['CONSUMER_KEY']}
        )
        response = conn.get("/geocoding/v1/address?location=#{params[:location]}")
        json = JSON.parse(response.body, symbolize_names: true)
        lat = json[:results][0][:locations][0][:latLng][:lat]
        lng = json[:results][0][:locations][0][:latLng][:lng]

        conn = Faraday.new(
          url: 'https://api.openweathermap.org/data/2.5/onecall',
          params: {appid: ENV['APP_ID']}
        )
        response = conn.get("?lat=#{lat}&lon=#{lng}&exclude=alerts,minutely")
        json = JSON.parse(response.body, symbolize_names: true)

        render json: json
      end
    end
  end
end
