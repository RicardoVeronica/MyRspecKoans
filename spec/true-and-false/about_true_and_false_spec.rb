describe 'true and false functionality' do
  def truth_value(condition)
    condition ? :true_stuff : :false_stuff
  end

  it 'true is treated as true' do
    expect(truth_value(true)).to eq(:true_stuff)
  end

  it 'false is teated as false' do
    expect(truth_value(false)).to eq(:false_stuff)
  end

  it 'nil is treated as false too' do
    expect(truth_value(nil)).to eq(:false_stuff)
  end

  it 'everything else is treated as true' do
    expect(truth_value(0)).to eq(:true_stuff) # integer
    expect(truth_value(0.0)).to eq(:true_stuff) # float
    expect(truth_value('')).to eq(:true_stuff) # string
    expect(truth_value([])).to eq(:true_stuff) # array
    expect(truth_value({})).to eq(:true_stuff) # hash
    expect(truth_value(:falsy)).to eq(:true_stuff) # symbol
    expect(truth_value((0..1))).to eq(:true_stuff) # range
    expect(truth_value(//)).to eq(:true_stuff) # regexp
  end
end
