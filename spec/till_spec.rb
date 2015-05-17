require 'till'

describe Till do

  context 'starts with' do

    it 'no orders' do
      expect(subject.items_ordered.empty?).to be true
    end

    it 'a total value of 0' do
      expect(subject.total).to eq 0
    end

    it 'a tax value of 0' do
      expect(subject.tax_total).to eq 0
    end
  end

  context 'item price' do
    it 'is registered for a Tea' do
      expect(subject.item_price 'Tea').to eq 3.65
    end

    it 'is registered for a Cappucino' do
      expect(subject.item_price 'Cappucino').to eq 3.85
    end

    it 'has a pre tax total' do
      subject.line_order 'Americano', 2
      subject.pre_tax_total
      expect(subject.total).to eq 7.50
    end
  end
end
