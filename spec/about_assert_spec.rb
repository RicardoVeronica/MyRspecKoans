describe 'about assert' do
  it 'if you want to pass a test, everything should be match' do
    expect(true).to eq(true)
  end

  it 'use variables to test your code' do
    actual_value = 1 + 1
    expected_value = 2

    expect(expected_value).to eq(actual_value)
  end

  it 'test that the values are different' do
    actual_value = 1 + 1
    expected_value = 3

    expect(expected_value).not_to eq(actual_value)
  end
end
