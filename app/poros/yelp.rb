# frozen_string_literal: true

class Yelp
  attr_reader :restaurant

  def initialize(data)
    @restaurant = { :name => data[:businesses][0][:name], :address => "#{data[:businesses][0][:location][:address1]}, #{data[:businesses][0][:location][:address2]}, #{data[:businesses][0][:location][:state]} #{data[:businesses][0][:location][:zip_code]}"}
  end
end
