class Commands::SquareCommand < Commands::Command

  def execute()
    @target.square()
  end

end