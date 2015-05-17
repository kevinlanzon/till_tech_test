class Till

  attr_reader :total, :tax_total, :orders

  def initialize
    @total = 0
    @tax_total = 0
    @orders = {}
  end
end