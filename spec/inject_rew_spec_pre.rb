require './lib/inject_rew_pre'

describe MyClass do

  let(:array) {MyClass.new([1,2,3])}

  it 'should yield the arguments to the block' do

    new_array = array.yield_test {|n| n**2}
    expect(new_array).to eq([1,4,9])

  end

  it 'should not change the state of the original array' do

    new_array = array.yield_test {|n| n**2}
    expect(array).to eq([1,2,3])

  end

  it 'should pass the arguments to the block' do

    new_array = array.block_test {|n| n**2}
    expect(new_array).to eq([1,4,9])

  end

  it 'should not change the state of the original array' do

    res = array.block_test {|n| n**2}
    expect(array).to eq([1,2,3])

  end
end
