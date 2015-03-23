class Commands::SubtractCommand < Commands::Command

  def execute()
    @target.subtract(@arg)
  end

  def to_s()
    "subtract"
  end

end