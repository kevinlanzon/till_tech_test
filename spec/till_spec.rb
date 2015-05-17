require 'till'

describe Till do

  it 'starts with a total value of 0' do
    expect(subject.total).to eq 0
  end

  it 'starts with a tax value of 0' do
    expect(subject.tax_total).to eq 0
  end

  it 'starts with no orders' do
    expect(subject.orders.empty?).to be true
  end
end