class  Array

  def inject_test(arg=nil)


    if arg.nil?
      result = self.first
      my_array = self[1..-1]
    else
      result = arg
      my_array = self
    end

    my_array.each{ |n| result = yield(result,n) }

    result
  end

end
