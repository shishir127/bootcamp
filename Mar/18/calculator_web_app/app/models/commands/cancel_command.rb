class Commands::CancelCommand < Commands::Command

  def record_and_execute()
    execute()
  end

  def execute()
    @target.cancel()
  end

  def to_s()
    "cancel"
  end

end