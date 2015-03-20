class Commands::AddCommand < Commands::Command

  def execute()
    @target.add(@arg)
  end

end