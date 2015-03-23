class Commands::AddCommand < Commands::Command

  def execute()
    @target.add(@arg)
  end

  def to_s
    "add"
  end

end