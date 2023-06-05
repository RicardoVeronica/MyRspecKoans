describe 'how to create symbols' do
  it 'can be made from strings' do
    string = 'ruby'

    expect(string.to_sym).to eq(:ruby)
  end

  it 'with spaces' do
    symbol = :"Ruby and Elixir"

    expect(symbol).to eq('Ruby and Elixir'.to_sym)
  end

  it 'with interpolation' do
    value = 'and'
    symbol = "Ruby #{value} Elixir"

    expect(symbol).to eq('Ruby and Elixir')
  end

  it 'you can interpolate it too' do
    symbol = :Ruby
    symbol2 = :Elixir
    string = "#{symbol} and #{symbol2}"

    expect(string).to eq('Ruby and Elixir')
  end

  it 'cannot be concatenated' do
    expect { :Ruby + :Elixir }.to raise_error(NoMethodError)
  end

  it 'can be dinamically created' do
    # symbols in ruby are not garbage collected, once you create a symbol
    # this persist the entire program's execution

    expect(('Ruby' + 'Elixir').to_sym).to eq(:RubyElixir)
  end
end
