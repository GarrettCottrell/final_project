# frozen_string_literal: true

class Background
  attr_reader :image_url, :location, :credit

  def initialize(data, location)
    @image_url = data[:results][0][:urls][:regular]
    @location = location
    @credit = "Photo by #{data[:results][0][:user][:name]} / Unsplash"
  end
end
