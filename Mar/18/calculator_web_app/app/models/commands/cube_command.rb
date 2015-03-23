class Commands::CubeCommand < Commands::Command

  def execute()
   @target.cube()
  end

  def to_s()
    "cube"
  end

end