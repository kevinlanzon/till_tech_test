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
      subject.add 'Americano', 2
      subject.pre_tax_total
      expect(subject.total).to eq 7.50
    end
  end

  context 'calculates tax' do
    it 'at a rate of 8.64%' do
      expect(Till::TAX).to eq 0.0864
    end

    it 'on the total cost of £10' do
      subject.calculate_tax(10)
      expect(subject.tax_total).to eq 0.86
    end

    it ' and adds it onto the sale of a Single Espresso' do
      subject.add('Single Espresso', 1)
      expect(subject.sale).to eq 2.23
    end

    it ' and adds it onto the sale of a few products' do
      subject.add('Single Espresso', 1)
      subject.add('Tea', 2)
      expect(subject.sale).to eq 10.16
    end
  end
end
