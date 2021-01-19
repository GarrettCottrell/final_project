# frozen_string_literal: true

module Api
  class ApiController < ApplicationController
    before_action :authenticate

    protected

    def authenticate
      api_key_data = JSON.parse(request.body.read, symbolize_names: true)

      api_key = api_key_data[:api_key]

      @user = User.find_by(api_key: api_key) if api_key

      return if @user

      render json: { status: :unauthorized }, status: :unauthorized
    end
  end
end
