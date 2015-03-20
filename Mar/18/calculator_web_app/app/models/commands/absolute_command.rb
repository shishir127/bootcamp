class Commands::AbsoluteCommand < Commands::Command

  def execute()
    @target.absolute()
  end

end