class Commands::Command 

  def initialize(arg, target, history)
    @arg = arg
    @target = target
    @history = history
  end

  def record_and_execute
    @history.record(self)
    execute
  end

  def execute
    raise MethodNotOverriddenError    
  end

end

class MethodNotOverriddenError < StandardError
end