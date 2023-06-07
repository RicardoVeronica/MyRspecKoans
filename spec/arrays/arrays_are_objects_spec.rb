describe 'arrays are' do
  it 'objects' do
    array = []

    expect(array.is_a?(Array)).to be(true)
    expect(array.is_a?(Object)).to be(true)
  end
end
