class Commands::SubtractCommand < Commands::Command

  def execute()
    @target.subtract(@arg)
  end

end