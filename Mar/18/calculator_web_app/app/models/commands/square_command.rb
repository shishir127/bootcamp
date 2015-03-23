class Commands::SquareCommand < Commands::Command

  def execute()
    @target.square()
  end

  def to_s()
    "square"
  end

end