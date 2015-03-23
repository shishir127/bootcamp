class Dispatcher

  attr_reader :target

  def initialize(target)
    @target = target
  end

  def parse_and_record_and_execute(command, arg)
    (build_command(command, arg.to_i)).record_and_execute()
  end

  def parse_and_execute(command, arg)
    (build_command(command, arg.to_i)).execute()
  end

  def build_command(command, arg)
    if command == "add"
      Commands::AddCommand.new(arg, @target)
    elsif command == "subtract"
      Commands::SubtractCommand.new(arg, @target)
    elsif command == "multiply"
      Commands::MultiplyCommand.new(arg, @target)
    elsif command == "divide"
      Commands::DivideCommand.new(arg, @target)
    elsif command == "negative"
      Commands::NegativeCommand.new(arg, @target)
    elsif command == "absolute"
      Commands::AbsoluteCommand.new(arg, @target)
    elsif command == "square"
      Commands::SquareCommand.new(arg, @target)
    elsif command == "sqrt"
      Commands::SqrtCommand.new(arg, @target)
    elsif command == "cube"
      Commands::CubeCommand.new(arg, @target)
    elsif command == "cbrt"
      Commands::CbrtCommand.new(arg, @target)
    elsif command == "repeat"
      Commands::RepeatCommand.new(arg, @target, self)
    elsif command == "cancel"
      Commands::CancelCommand.new(arg, @target)
    else
      Commands::NullCommand.new(arg, @target)
    end
  end

end