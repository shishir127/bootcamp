class Commands::MultiplyCommand < Commands::Command

  def execute()
    @target.multiply(@arg)
  end

  def to_s()
    "multiply"
  end

end