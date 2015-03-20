class Commands::SqrtCommand < Commands::Command

  def execute()
    @target.sqrt()
  end

end