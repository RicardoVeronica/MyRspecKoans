describe 'joining and spliting strings' do
  it 'strings can be splited' do
    string = 'Ruby Elixir Python'
    words = string.split

    # expect(words).to eq(['Ruby', 'Elixir', 'Python'])
    expect(words).to eq(%w[Ruby Elixir Python]) # crate an array of strings
  end

  it 'strings can be splited with different patterns' do
    string = 'the:rain:in:spain'
    words = string.split(/:/)

    expect(words).to eq(%w[the rain in spain]) # create an array of strings
  end

  it 'strings can be joined too' do
    words = %w[now is the time] # array of strings

    expect(words.join(" ")).to eq('now is the time') # create a unique string
  end
end
