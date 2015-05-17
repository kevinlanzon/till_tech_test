require 'till'

describe Till do

  context 'starts with' do

    it 'a total value of 0' do
      expect(subject.total).to eq 0
    end

    it 'a tax value of 0' do
      expect(subject.tax_total).to eq 0
    end

    it 'no orders' do
      expect(subject.orders.empty?).to be true
    end
  end

  context 'price' do

    it 'is registered for a Tea' do
      expect(subject.item_price 'Tea').to eq 3.65
    end

    it 'is registered for a Cappucino' do
      expect(subject.item_price 'Cappucino').to eq 3.85
    end
  end
end
