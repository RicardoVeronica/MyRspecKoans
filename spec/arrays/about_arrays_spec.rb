describe 'about arrays' do
  it 'creating arrays' do
    empty_array = []

    expect(empty_array.class).to eq(Array)
    expect(empty_array.size).to eq(0)
  end

  it 'preffer array literals instead of explicit array' do
    # array = Array.new # explicit array
    array = [] # array literal

    array[0] = 1
    expect(array).to eq([1])

    array[1] = 2
    expect(array).to eq([1, 2])

    array << 333
    expect(array).to eq([1, 2, 333])
  end

  # rubocop: disable Style/WordArray
  it 'another way to create array of strings' do
    array_of_strings = ['this', 'is', 'an', 'array']
    array_of_strings_two = %w[this is an array]

    expect(array_of_strings).to eq(array_of_strings_two)
  end
  # rubocop: enable Style/WordArray

  # rubocop: disable Style/SymbolArray
  it 'another way to create array of symbols' do
    array_of_symbols = [:ruby, :elixir, :python]
    array_of_symbols_two = %i[ruby elixir python]

    expect(array_of_symbols).to eq(array_of_symbols_two)
  end
  # rubocop: enable Style/SymbolArray

  it 'array indexing' do
    array = %i[peanut butter and jelly]

    expect(array[0]).to eq(:peanut)
    expect(array.first).to eq(:peanut)

    expect(array[3]).to eq(:jelly)
    expect(array.last).to eq(:jelly)

    expect(array[-1]).to eq(:jelly)
    expect(array[-3]).to eq(:butter)
  end

  it 'array slicing' do
    array = %i[peanut butter and jelly]

    expect(array[0, 1]).to eq([:peanut])
    expect(array[0, 2]).to eq(%i[peanut butter])
    expect(array[2, 2]).to eq(%i[and jelly])

    expect(array[4, 0]).to eq([])
    expect(array[4, 100]).to eq([])
    expect(array[5, 0]).to eq(nil)
  end

  it 'arrays and ranges' do
    expect((1..5).class).to eq(Range)

    expect((1..5)).not_to eq([1, 2, 3, 4, 5])
    expect((1..5).to_a).to eq([1, 2, 3, 4, 5])
  end

  it 'slicing with ranges' do
    array = %I[peanut butter and jelly]

    expect(array[0..2]).to eq(%i[peanut butter and]) # inclusive
    expect(array[0...2]).to eq(%i[peanut butter]) # exlusive
    expect(array[1..]).to eq(%i[butter and jelly])
  end

  it 'pushing an popping elements' do
    array = [1, 2]

    array.push(:last) # adding at last

    expect(array).to eq([1, 2, :last])

    popped_value = array.pop

    expect(popped_value).to eq(:last)
    expect(array).to eq([1, 2])
  end

  it 'shifting arrays' do
    array = [1, 2]

    array.unshift(:first) # adding at 0

    expect(array).to eq([:first, 1, 2])

    shifted_value = array.shift

    expect(shifted_value).to eq(:first)
    expect(array).to eq([1, 2])
  end
end
