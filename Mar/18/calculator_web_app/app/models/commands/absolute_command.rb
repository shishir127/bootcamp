class Commands::AbsoluteCommand < Commands::Command

  def execute()
    @target.absolute()
  end

  def to_s()
    "absolute"
  end

end