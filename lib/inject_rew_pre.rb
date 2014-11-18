class MyClass < Array

  def yield_test

    @result = MyClass.new

    self.each do |n|

       @result  << yield(n)

    end

    @result

  end

  def block_test(&block)

    @result = MyClass.new

    self.each do |n|
      @result  << block.call(n)
    end

    @result
  end
end
