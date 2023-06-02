describe 'strings are objects' do
  it 'strings are unique objects' do
    a = 'string'
    b = 'string'

    expect(a).to eq(b)
    expect(a.object_id).not_to eql(b.object_id)
  end
end
