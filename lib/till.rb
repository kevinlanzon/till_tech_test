require_relative 'item_list'

class Till
  include ItemList

  TAX = 0.0864

  attr_reader :total, :tax_total, :items_ordered

  def initialize
    super # sends no arguments to the higher-up method,
    # even if arguments were passed to the current method
    @total = 0
    @tax_total = 0
    @items_ordered = {}
  end

  def item_price(product)
    data_hash[0]['prices'][0][product]
  end

  def add(product, quantity)
    total = line_total(product, quantity)
    @items_ordered[product.to_sym] = { total: total, quantity: quantity }
  end

  def line_total(product, quantity)
    item_price(product) * quantity
  end

  def pre_tax_total
    @items_ordered.each do |_, value|
      value.each { |key, value| @total += value if key == :total }
    end
  end

  def calculate_tax(total)
    @tax_total = (total * TAX).round(2)
  end

  def sale
    pre_tax_total
    calculate_tax(@total)
    @total += @tax_total
  end
end
