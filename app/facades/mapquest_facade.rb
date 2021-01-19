# frozen_string_literal: true

class MapquestFacade
  def self.map_quest(from, to)
    data = MapquestService.map_quest(from, to)
    Mapquest.new(data)
  end
end
