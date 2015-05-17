require_relative 'item_list'

class Till

  include ItemList

  attr_reader :total, :tax_total, :orders

  def initialize
    super # sends no arguments to the higher-up method, even if arguments were passed to the current method
    @total = 0
    @tax_total = 0
    @orders = {}
  end

  def item_price(product)
    data_list[0]['prices'][0][product]
  end
end
