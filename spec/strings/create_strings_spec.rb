describe 'how to create strings' do
  it 'double quotes' do
    name = "Matz"

    expect(name.class).to be(String)
  end

  it 'single quotes' do
    language = 'Ruby'

    expect(language.class).to be(String)
  end

  it 'flexible quotes' do
    web_framework = %(Ruby on Rails)
    # not_recommended = %{Ruby on Rails}
    # not_recommended_either = %{Ruby on Rails}

    expect(web_framework.class).to be(String)
  end

  it 'flexible quotes are multiline strings' do
    statement = %(
    Ruby
    is the best
    language
)

    expect(statement.lines.count).to eq(4) # include the fist blank line
    expect(statement.length).to eq(39) # include blank spaces and line breaks
    expect(statement[0, 1]).to eql("\n") # line break character take just one space
  end

  it 'heredocs' do
    message = <<-MY_MESSAGE
    this is a
    string
    MY_MESSAGE

    expect(message.class).to be(String)
    expect(message.lines.count).to eq(2) # does not count the first line break
    expect(message.length).to eq(25) # include blank spaces and line breaks
  end
end
