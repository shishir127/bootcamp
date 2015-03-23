class Commands::NullCommand < Commands::Command

  def execute
  end

  def record_and_execute
  end

  def to_s
    "null"
  end

end