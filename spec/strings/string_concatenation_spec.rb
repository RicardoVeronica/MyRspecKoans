describe 'string concatenetion' do
  it 'work with plus sing' do
    string = 'hello ' + 'world'

    expect(string).to eq('hello world')
  end

  it 'will leave the original string unmodified' do
    # you need to crate another variable (new string object) to persist the result
    hi = 'hello '
    there = 'world'

    expect(hi + there).to eq('hello world')
    expect(hi).to eq('hello ')
    expect(there).to eq('world')
  end

  it 'with plus equal do not, concatenate at the end of the original string' do
    # you do not need to create another variable
    # internaly create a new string object and assign the result to the
    # original string
    hi = 'hello '
    there = 'world'

    expect(hi += there).to eq('hello world')
    expect(hi).to eq('hello world')
    expect(there).to eq('world')
  end

  it 'with shovel operator also work' do
    # more efficient
    # the same as plus equal but more rubyist and do not creates a new object
    hi = 'hello '
    there = 'world'

    expect(hi << there).to eq('hello world')
    expect(hi).to eq('hello world')
  end
end
