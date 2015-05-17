require 'till'

describe Till do

  it 'starts with a total value of 0' do
    expect(subject.total).to eq 0
  end
end