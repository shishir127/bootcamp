class SquareCommand < Command

  def execute()
    @target.square()
  end

end