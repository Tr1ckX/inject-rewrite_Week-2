require './lib/inject_rew'

describe MyClass do

  let(:array) {MyClass.new([1,2,3])}

  it 'should return the sum of the given array' do
    expect(array.inject_test {|sum,n| sum + n}).to eq(6)
  end

  it 'should return the sum of the given array plus the arg' do
    expect(array.inject_test(4) {|sum,n| sum + n}).to eq(10)
  end

  it 'should not change the state of the original array' do
    array.inject_test(4) {|sum,n| sum + n}
    expect(array).to eq([1,2,3])
  end

end
