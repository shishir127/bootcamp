class Commands::ExitCommand < Commands::Command

  def record_and_execute()
    execute()
  end

  def execute()
    abort
  end

end