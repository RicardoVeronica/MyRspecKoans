describe 'Ruby symbols' do
  it 'are objects' do
    symbol = :Ruby

    expect(symbol.class).to eq(Symbol)
  end

  it 'when you have identical are a single internal object' do
    symbol1 = :Ruby
    symbol2 = :Ruby

    expect(symbol1.object_id).to eq(symbol2.object_id)
  end

  it 'are not strings' do
    symbol = :Ruby

    expect(symbol.class).not_to eq('String')
  end

  it 'do not have string methods' do
    symbol = :ruby

    expect(symbol.respond_to?(:each_char)).to be(false)
    expect(symbol.respond_to?(:reverse)).to be(false)
  end
end
