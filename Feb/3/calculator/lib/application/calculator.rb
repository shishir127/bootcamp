class Calculator 

  def initialize
    @number = 0
  end

  def add(a)
    @number += a
  end

  def subtract(a)
    @number -= a
  end

  def multiply(a)
    @number *= a
  end

  def divide(a)
    @number /= a
  end

  def cancel
    @number = 0
  end
  
  def absolute
    @number = @number.abs
  end

  def negative
    @number *= -1
  end

  def square
    @number = @number ** 2
  end

  def sqrt
    @number = @number ** 0.5
  end

  def cube
    @number = @number ** 3
  end

  def cbrt
    @number = @number ** (1.0/3.0)
  end

end