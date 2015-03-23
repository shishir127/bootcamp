class Commands::NegativeCommand < Commands::Command

  def execute()
    @target.negative()
  end

  def to_s()
    "negative"
  end

end