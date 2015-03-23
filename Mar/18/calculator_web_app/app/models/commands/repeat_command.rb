class Commands::RepeatCommand < Commands::Command

  def initialize(arg, target, dispatcher)
    super(arg, target)
    @dispatcher = dispatcher
  end

  def record_and_execute()
    execute()
  end

  def execute()
    (History.get_last_n_operations(@arg)).each { |history| @dispatcher.parse_and_execute(history[:command], @target.number) }
  end

  def to_s()
    "repeat"
  end

end