describe 'back slash functionality in strings' do
  it 'use double quotes to create strings that contains single quotes' do
    statement = "Don't be afraid"
    output = 'Don\'t be afraid' # do not interpret the character

    # this will print the value of the variable in STDOUT of rspec
    puts statement
    puts output

    expect(statement).to eq(output)
  end

  it 'use single quotes to create strings that contains double quotes' do
    statement = 'Franklin said: "Tell me and I forget. Teach me and I remember. Involve me and I learn"'
    output = "Franklin said: \"Tell me and I forget. Teach me and I remember. Involve me and I learn\""

    expect(statement).to eq(output)
  end
end
