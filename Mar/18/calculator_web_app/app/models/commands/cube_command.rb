class Commands::CubeCommand < Commands::Command

  def execute()
   @target.cube()
  end

end