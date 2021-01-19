# frozen_string_literal: true

class Mapquest
  attr_reader :destination_city, :travel_time

  def initialize(data)
   
    @travel_time = "#{(data[:route][:realTime])/3600} hours #{data[:route][:realTime]%3600/60} min"
    @destination_city = "#{data[:route][:locations][1][:adminArea5]}, #{data[:route][:locations][1][:adminArea3]}"
  end
end
