describe 'how to use the scape character' do
  it 'double quote string interpret scape the character' do
    scape = "\n"

    expect(scape.size).to eq(1) # size method is the same as length
  end

  it 'single quote string does not interpret the scape character' do
    scape = '\n'

    expect(scape.size).to eq(2)
  end
end
