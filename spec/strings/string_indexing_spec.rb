describe 'how to work with indexing' do
  it 'can get a substring from a string' do
    language = 'Ruby'

    #  R  U  B  Y
    #  0  1  2  3  4
    # -4 -3 -2 -1 -0
    expect(language[0, 4]).to eql('Ruby') # exclude the last index

    expect(language[0]).to eql('R') # begin with 0
    expect(language[3]).to eql('y')

    expect(language[-1]).to eql('y') # do not need to begin with -0
    expect(language[-4]).to eql('R')

    expect(language[0..3]).to eql('Ruby') # include the last index
  end
end
