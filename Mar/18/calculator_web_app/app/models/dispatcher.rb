class Dispatcher

  attr_reader :calculator

  def initialize
    @calculator = Calculator.new()
    @history = History.new()
  end

  def parse_and_execute(command, arg)
    (build_command(command, arg.to_i)).record_and_execute()
  end

  def build_command(command, arg)
    if command == "add"
      Commands::AddCommand.new(arg, @calculator, @history)
    elsif command == "subtract"
      Commands::SubtractCommand.new(arg, @calculator, @history)
    elsif command == "multiply"
      Commands::MultiplyCommand.new(arg, @calculator, @history)
    elsif command == "divide"
      Commands::DivideCommand.new(arg, @calculator, @history)
    elsif command == "negative"
      Commands::NegativeCommand.new(arg, @calculator, @history)
    elsif command == "absolute"
      Commands::AbsoluteCommand.new(arg, @calculator, @history)
    elsif command == "square"
      Commands::SquareCommand.new(arg, @calculator, @history)
    elsif command == "sqrt"
      Commands::SqrtCommand.new(arg, @calculator, @history)
    elsif command == "cube"
      Commands::CubeCommand.new(arg, @calculator, @history)
    elsif command == "cbrt"
      Commands::CbrtCommand.new(arg, @calculator, @history)
    elsif command == "repeat"
      Commands::RepeatCommand.new(arg, @calculator, @history)
    elsif command == "cancel"
      Commands::CancelCommand.new(arg, @calculator, @history) 
    else
      Commands::NullCommand.new(arg, @calculator, @history)
    end
  end

end