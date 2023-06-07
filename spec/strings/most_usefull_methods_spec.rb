describe 'string most usefull methods' do
  it 'size is the same to length' do
    name = 'ruby'

    expect(name.size).to eq(4)
    expect(name.length).to eq(4)
  end

  it 'concat' do
    name = 'ruby '
    string = 'on rails'

    expect(name.concat(string)).to eq('ruby on rails')
  end

  it 'strip' do
    name = '   ruby   '

    expect(name.strip).to eq('ruby')
  end

  it 'upcase' do
    name = 'ruby'

    expect(name.upcase).to eq('RUBY') # does not mutate the value
    expect(name).to eq('ruby')

    expect(name.upcase!).to eq('RUBY') # mutate the value
    expect(name).to eq('RUBY')
  end

  it 'downcase' do
    name = 'RUBY'

    expect(name.downcase).to eq('ruby')
    expect(name).to eq('RUBY')

    expect(name.downcase!).to eq('ruby')
    expect(name).to eq('ruby')
  end

  it 'capitalize' do
    name = 'ruby'

    expect(name.capitalize).to eq('Ruby')
    expect(name).to eq('ruby')

    expect(name.capitalize!).to eq('Ruby')
    expect(name).to eq('Ruby')
  end

  it 'include' do
    name = 'ruby'

    expect(name.include?('y')).to be(true)
  end

  it 'start with' do
    name = 'ruby'

    expect(name.start_with?('ru')).to be(true)
  end

  it 'sub and gsub' do
    name = 'ruby on rails'

    sub_name = name.sub('on rails', 'rspec')

    expect(sub_name).to eq('ruby rspec')

    gsub_name = name.gsub('r', 'R')

    expect(gsub_name).to eq('Ruby on Rails')
  end
end
