describe 'object' do
  it 'are "almost" everything' do
    expect(1.is_a?(Object)).to be(true)
    expect(1.1.is_a?(Object)).to be(true)
    expect(''.is_a?(Object)).to be(true)
    expect(//.is_a?(Object)).to be(true)
    expect([].is_a?(Object)).to be(true)
    expect({}.is_a?(Object)).to be(true)
    expect((0..1).is_a?(Object)).to be(true)
    expect(Object.is_a?(Object)).to be(true)
  end

  it 'can be converted to strings' do
    expect(123.to_s).to eq('123')
    expect(nil.to_s).to eq('')
  end

  it 'can be inspected' do
    expect(123.inspect).to eq('123')
    expect(nil.inspect).to eq('nil')
  end

  it 'has an id' do
    obj = Object.new

    expect(obj.object_id.class).to eq(Integer)
  end

  it 'has different id' do
    obj = Object.new
    another_obj = Object.new

    expect(obj.object_id).not_to be(another_obj.object_id)
  end

  it 'small integers have fixed ids' do
    expect(0.object_id).to eq(1)
    expect(1.object_id).to eq(3)
    expect(2.object_id).to eq(5)
    expect(100.object_id).to eq(201)
  end

  it 'clone creates a different object' do
    obj = Object.new
    copy = obj.clone

    expect(obj).not_to eq(copy)
    expect(obj.object_id).not_to eq(copy.object_id)
  end
end
