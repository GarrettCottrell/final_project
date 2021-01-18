# frozen_string_literal: true

class Background
  attr_reader :image_url, :credit

  def initialize(data)
   
    @image_url = data[:results][0][:urls][:regular]
  end
end
