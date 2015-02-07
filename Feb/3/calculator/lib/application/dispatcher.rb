class Dispatcher

  attr_reader :calculator, :history

  def initialize
    @calculator = Calculator.new()
    @history = History.new()
  end

  def parse_and_execute(input_string)
    input_components = input_string.chomp.split
    begin
      (build_command(input_components[0], input_components[1].to_f)).record_and_execute()  
    rescue NoMethodError => e
      "Invalid input"
    end
  end

  def build_command(command, arg = nil)
    if command == "add"
      AddCommand.new(arg, @calculator, @history)
    elsif command == "subtract"
      SubtractCommand.new(arg, @calculator, @history)
    elsif command == "multiply"
      MultiplyCommand.new(arg, @calculator, @history)
    elsif command == "divide"
      DivideCommand.new(arg, @calculator, @history)
    elsif command == "negative"
      NegativeCommand.new(arg, @calculator, @history)
    elsif command == "absolute"
      AbsoluteCommand.new(arg, @calculator, @history)
    elsif command == "square"
      SquareCommand.new(arg, @calculator, @history)
    elsif command == "sqrt"
      SqrtCommand.new(arg, @calculator, @history)
    elsif command == "cube"
      CubeCommand.new(arg, @calculator, @history)
    elsif command == "cbrt"
      CbrtCommand.new(arg, @calculator, @history)
    elsif command == "repeat"
      RepeatCommand.new(arg, @calculator, @history)
    elsif command == "cancel"
      CancelCommand.new(arg, @calculator, @history)      
    elsif command == "exit"
      ExitCommand.new(arg, @calculator, Kernel)
    end
  end

end