describe 'method names become symbols' do
  it 'use to be easy' do
    def grettings
      'hello world'
    end

    grettings

    symbols_are_strings = Symbol.all_symbols.map(&:to_s)

    expect(symbols_are_strings.include?('grettings')).to be(true)
  end
end
