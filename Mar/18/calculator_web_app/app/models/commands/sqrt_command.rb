class Commands::SqrtCommand < Commands::Command

  def execute()
    @target.sqrt()
  end

  def to_s()
    "sqrt"
  end

end