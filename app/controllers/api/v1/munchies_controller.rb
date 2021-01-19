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
         require 'pry'; binding.pry
      end
    end
  end
end
