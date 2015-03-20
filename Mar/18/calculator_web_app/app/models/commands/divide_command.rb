class Commands::DivideCommand < Commands::Command

  def execute()
    @target.divide(@arg)
  end

end