class History

  attr_reader :stack

  def initialize
    @stack = []
  end

  def record(object)
    @stack << object
  end

  def get_last_n_operations(n)
    @stack[Range.new(-1 * n, -1)]
  end

end