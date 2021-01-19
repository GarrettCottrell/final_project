# frozen_string_literal: true

class YelpFacade
  def self.yelp(end_location, food)
    data = YelpService.yelp(end_location, food)
    Yelp.new(data)
  end
end
