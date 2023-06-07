describe 'about nil' do
  it 'is an object' do
    expect(nil.is_a?(Object)).to eq(true)
  end

  it 'you do not get null pointer errors when calling methods on nil' do
    # null poiter error in java
    # java use references to memory location, when a reference is null
    # it means it does not point to any valid object.
    # A null pointer error occurs

    begin
      nil.some_unexist_method
    rescue StandardError => e
      expect { e.value }.to raise_error(NoMethodError)
      expect(e.message).to match(/undefined method/)
    end
  end

  it 'has a few methods defined on it' do
    expect(nil.nil?).to be(true)
    expect(nil.to_s).to eq('')
    expect(nil.to_i).to eq(0)
    expect(nil.to_f).to eq(0.0)
    expect(nil.to_a).to eq([])
    expect(nil.to_h).to eq({})
  end

  # .nil? is more idiomatic and readable in ruby
  # .nil? is use to check if an object is nil = value does not exist
  # == if for general value equality comparition between objects
end
