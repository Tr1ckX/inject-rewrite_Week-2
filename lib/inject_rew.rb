class  Array

  def inject_test(arg=nil)

    if arg.nil?
      @result = self.first
      self[1..-1].each { |n| @result = yield(@result,n) }

    else
      @result = arg
      self.each { |n| @result = yield(@result,n) }
    end

    @result

  end

end
