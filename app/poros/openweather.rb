# frozen_string_literal: true

class Openweather
  attr_reader :forecast

  def initialize(data)
    @forecast = { :summary => data[:weather][0][:description],:temperature => data[:main][:temp].to_s }
  end
end
