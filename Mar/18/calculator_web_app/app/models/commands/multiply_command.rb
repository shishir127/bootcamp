class Commands::MultiplyCommand < Commands::Command

  def execute()
    @target.multiply(@arg)
  end

end