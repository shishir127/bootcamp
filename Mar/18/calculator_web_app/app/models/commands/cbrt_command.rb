class Commands::CbrtCommand < Commands::Command

  def execute()
    @target.cbrt()
  end

end