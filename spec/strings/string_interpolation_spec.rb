describe 'string interpolation' do
  it 'works with double quotes' do
    value = 123
    interpolate = "The value is #{value}"

    expect(interpolate).to eq('The value is 123')
  end

  it 'does not work with single quotes' do
    value = 123
    interpolate = 'The value is #{value}'

    expect(interpolate).to eq('The value is #{value}')
  end

  it 'must evaluate all ruby expressions' do
    evaluation = "The square root of '4', is #{Math.sqrt(4)}"

    expect(evaluation).to eq("The square root of '4', is 2.0")
  end
end
