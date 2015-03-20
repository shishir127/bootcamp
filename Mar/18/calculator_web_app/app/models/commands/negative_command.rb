class Commands::NegativeCommand < Commands::Command

  def execute()
    @target.negative()
  end

end