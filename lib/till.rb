require 'json'
file = File.read('hipstercoffee.json')
PRICES = JSON.parse(file).first["prices"]

class Till

  attr_reader :order

  def initialize
    @order = []
  end

  def add(item)
    order << item
  end

  def total
    3.65
  end
end