# frozen_string_literal: true

class BackgroundFacade
  def self.background(location)
    data = ImageService.background(location)
    Background.new(data, location)
  end
end
