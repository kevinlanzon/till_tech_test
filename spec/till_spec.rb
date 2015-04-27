require 'till'

describe Till do

  it 'can add an item' do
    subject.add("Tea")
    expect(subject.total).to eq 3.65
  end
end