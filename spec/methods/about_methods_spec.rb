describe 'methods' do
  def global_method(one, two)
    one + two
  end

  it 'calling methods' do
    expect(global_method(2, 2)).to eq(4)
    expect(global_method 2, 2).to eq(4)
  end

  it 'wrong number of argument is a runtime error not a syntax error' do
    expect { global_method }.to raise_error(ArgumentError, /wrong number of/)
    expect { global_method(1, 2, 3) }.to raise_error(ArgumentError, /wrong number of/)
  end

  def method_with_defaults(a, b = :default_value)
    [a, b]
  end

  it 'calling with default values' do
    expect(method_with_defaults(1)).to eq([1, :default_value])
    expect(method_with_defaults(1, 2)).to eq([1, 2])
  end

  def method_with_var_args(*args)
    args
  end

  it 'calling with variable args' do
    expect(method_with_var_args.class).to eq(Array)
    expect(method_with_var_args).to eq([])
    expect(method_with_var_args(:one)).to eq([:one])
    expect(method_with_var_args(:one, 2)).to eq([:one, 2])
    expect(method_with_var_args(:one, 2, 'three')).to eq([:one, 2, 'three'])
  end

  def method_with_explicit_return
    :a_non_return_value
    return :return_value
    :another_non_return_value
  end

  it 'method with explicit return' do
    expect(method_with_explicit_return).to eq(:return_value)
  end

  def method_witout_explicit_return
    :non_returned
    :returned
  end

  it 'without explicit return' do
    expect(method_witout_explicit_return).to eq(:returned)
  end

  class Dog
    def name
      'Fido'
    end

    private

    def noise
      'Woofff'
    end
  end

  it 'test private method' do
    lua = Dog.new

    expect(lua.name).to eq('Fido')
    expect { lua.noise }.to raise_error(NoMethodError)
  end
end
