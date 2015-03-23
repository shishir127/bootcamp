class Commands::DivideCommand < Commands::Command

  def execute()
    @target.divide(@arg)
  end

  def to_s()
    "divide"
  end

end