describe 'creating hashes' do
  it 'with hash literal instead of explicit Hash.new' do
    empty_hash = {}

    expect(empty_hash.class).to eq(Hash)
    expect(empty_hash.size).to eq(0)
  end

  it 'adding keys and values' do
    hash = { one: 'uno', two: 'dos' } # new ruby 1.9 syntax for key symbols

    expect(hash.size).to eq(2)
    expect(hash[:one]).to eq('uno')
    expect(hash[:two]).to eq('dos')
    expect(hash[:doesnt_exist]).to eq(nil)
  end

  it 'accessing values with fetch' do
    hash = { one: 'uno' }

    expect(hash.fetch(:one)).to eq('uno')
    expect { hash.fetch(:doesnt_exist) }.to raise_error(KeyError)

    # fetch return KeyError instead of nil
  end

  it 'changing hashes' do
    hash = { one: 'uno', two: 'dos' }
    hash[:one] = 'eins'

    expected = { one: 'eins', two: 'dos' }

    # object equality comparing variables
    expect(hash).to eq(expected)
  end

  it 'hashes are unorder object' do
    hash1 = { one: 'uno', two: 'dos' }
    hash2 = { two: 'dos', one: 'uno' }

    expect(hash1).to eq(hash2)
  end

  it 'hash keys' do
    hash = { one: 'uno', two: 'dos' }

    expect(hash.keys.size).to eq(2)
    expect(hash.keys.include?(:one)).to be(true)
    expect(hash.keys.include?(:two)).to be(true)
    expect(hash.keys.class).to be(Array)
  end

  it 'hash values' do
    hash = { one: 'uno', two: 'dos' }

    expect(hash.values.size).to eq(2)
    expect(hash.values.include?('uno')).to be(true)
    expect(hash.values.include?('dos')).to be(true)
    expect(hash.values.class).to be(Array)
  end

  it 'merging hashes' do
    hash = { 'jim' => 53, 'amy' => 20, 'dan' => 23 }
    new_hash = hash.merge({ 'jim' => 100, 'jenny' => 26 })

    expect(hash.eql?(new_hash)).not_to be(true)

    expected = { 'jim' => 100, 'amy' => 20, 'dan' => 23, 'jenny' => 26 }
    expect(new_hash == expected).to be(true)
  end

  it 'default values' do
    hash1 = {}

    hash1[:one] = 1

    expect(hash1[:one]).to eq(1)
    expect(hash1[:two]).to eq(nil)

    hash2 = Hash.new('dos')
    hash2[:one] = 1

    expect(hash2[:one]).to eq(1)
    expect(hash2[:two]).to eq('dos')
  end

  it 'default value are the same object' do
    hash = Hash.new([])

    hash[:one] << 'uno'
    hash[:two] << 'dos'

    expect(hash[:one]).to eq(%w[uno dos])
    expect(hash[:two]).to eq(%w[uno dos])
    expect(hash[:three]).to eq(%w[uno dos])

    expect(hash[:one].object_id.equal?(hash[:two].object_id)).to eq(true)
  end

  it 'default value with block' do
    hash = Hash.new { |name, key| name[key] = [] }

    hash[:one] << 'uno'
    hash[:two] << 'dos'

    expect(hash[:one]).to eq(['uno'])
    expect(hash[:two]).to eq(['dos'])
    expect(hash[:three]).to eq([])
  end
end
