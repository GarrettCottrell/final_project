# frozen_string_literal: true

module Api
  module V1
    class BackgroundController < ApplicationController
      def index
        background = BackgroundFacade.background(params['location'])

        render json: BackgroundSerializer.new(background).serializable_hash.to_json
      end
    end
  end
end
