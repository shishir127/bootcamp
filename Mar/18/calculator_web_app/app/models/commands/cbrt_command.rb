class Commands::CbrtCommand < Commands::Command

  def execute()
    @target.cbrt()
  end

  def to_s()
    "cbrt"
  end

end