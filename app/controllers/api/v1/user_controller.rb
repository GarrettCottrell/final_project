# frozen_string_literal: true

module Api
  module V1
    class UserController < ApplicationController
      def create
        user_info = JSON.parse(request.body.read, symbolize_names: true)
        user = User.new(user_info)
        if user.save
          render :status => '201', :json => UserSerializer.new(user)
        else
          render json: { errors: user.errors.full_messages.uniq }, status: :bad_request
        end
      end
    end
  end
end
