# frozen_string_literal: true

class Openweather
  attr_reader :summary, :temperature

  def initialize(data)
    @summary = data[:weather][0][:description]
    @temperature = data[:main][:temp].to_s
  end
end
