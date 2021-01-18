# frozen_string_literal: true

class BackgroundFacade
  def self.background(search_term)
    data = BackgroundService.background(search_term)
    Background.new(data)
  end
end
