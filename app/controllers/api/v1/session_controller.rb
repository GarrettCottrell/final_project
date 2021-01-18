# frozen_string_literal: true

module Api
  module V1
    class SessionController < ApplicationController
      def create
        user_info = JSON.parse(request.body.read, symbolize_names: true)

        user = User.find_by(email: user_info[:email])
        if user && user.authenticate(user_info[:password])
          session[:user_id] = user.id
          render json: UserSerializer.new(user)
        else
          render json: { errors: 'Username or Password Incorrect' }, status: :bad_request
        end
      end
    end
  end
end
