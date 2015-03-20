class Dispatcher

  attr_reader :calculator, :history

  def initialize(target)
    @target = target
    @history = History.new()
  end

  def parse_and_execute(operation, operand)
    build_command(operation, operand.to_f).record_and_execute()
  end

  def build_command(command, arg = nil)
    if command == "add"
      AddCommand.new(arg, @target, @history)
    elsif command == "subtract"
      SubtractCommand.new(arg, @target, @history)
    elsif command == "multiply"
      MultiplyCommand.new(arg, @target, @history)
    elsif command == "divide"
      DivideCommand.new(arg, @target, @history)
    elsif command == "negative"
      NegativeCommand.new(arg, @target, @history)
    elsif command == "absolute"
      AbsoluteCommand.new(arg, @target, @history)
    elsif command == "square"
      SquareCommand.new(arg, @target, @history)
    elsif command == "sqrt"
      SqrtCommand.new(arg, @target, @history)
    elsif command == "cube"
      CubeCommand.new(arg, @target, @history)
    elsif command == "cbrt"
      CbrtCommand.new(arg, @target, @history)
    elsif command == "repeat"
      RepeatCommand.new(arg, @target, @history)
    elsif command == "cancel"
      CancelCommand.new(arg, @target, @history)      
    elsif command == "exit"
      ExitCommand.new(arg, @target, Kernel)
    end
  end

end