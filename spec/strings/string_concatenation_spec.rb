describe 'string concatenetion' do
  it 'work with plus sing' do
    string = 'hello ' + 'world'

    expect(string).to eq('hello world')
  end

  it 'will leave the original string unmodified' do
    hi = 'hello '
    there = 'world'

    expect(hi + there).to eq('hello world')
    expect(hi).to eq('hello ')
    expect(there).to eq('world')
  end

  it 'with plus equal do not, concatenate at the end of the original string' do
    hi = 'hello '
    there = 'world'

    expect(hi += there).to eq('hello world')
    expect(hi).to eq('hello world')
    expect(there).to eq('world')
  end

  it 'with shovel operator also work' do
    hi = 'hello '
    there = 'world'

    expect(hi << there).to eq('hello world')
    expect(hi).to eq('hello world')
  end
end
