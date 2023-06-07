describe 'about array assignment' do
  it 'non parallel assignment' do
    names = %w[John Smith]

    expect(names).to eq(['John', 'Smith'])
  end

  it 'parallel asignment, rubocop says, do not use it' do
    first_name, last_name = %w[John Smith]

    expect(first_name).to eq('John')
    expect(last_name).to eq('Smith')
  end

  it 'parallel asignment with extra values' do
    first_name, last_name = %w[John Smith III]

    expect(first_name).to eq('John')
    expect(last_name).to eq('Smith')
  end

  it 'parallel asignment with splat operator' do
    first_name, *last_name = ['John', 'Smith', 'III']

    expect(first_name).to eq('John')
    expect(last_name).to eq(['Smith', 'III'])
  end

  it 'parallel asignment with too few values' do
    first_name, last_name = ['Ruby']

    expect(first_name).to eq('Ruby')
    expect(last_name).to eq(nil)
  end

  it 'parallel asignment with subarrays' do
    first_name, last_name = [['Willie', 'Raw'], 'Johnson']

    expect(first_name).to eq(['Willie', 'Raw'])
    expect(last_name).to eq('Johnson')
  end

  it 'parallel asignment with one variable' do
    first_name, = ['John', 'Smith']

    expect(first_name).to eq('John')
  end

  it 'swapping with parallel asignment' do
    first_name = 'Ruby'
    last_name = 'On Rails'

    first_name, last_name = last_name, first_name

    expect(first_name).to eq('On Rails')
    expect(last_name).to eq('Ruby')
  end
end
