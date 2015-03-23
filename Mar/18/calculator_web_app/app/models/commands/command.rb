class Commands::Command 

  def initialize(arg, target)
    @arg = arg
    @target = target
  end

  def record_and_execute()
    history = History.new()
    history.command = to_s
    if history.save
      execute()
    else
      nil
    end
  end

  def execute()
    raise MethodNotOverriddenError
  end

  def to_s()
    raise MethodNotOverriddenError
  end

end

class MethodNotOverriddenError < StandardError
end