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

end