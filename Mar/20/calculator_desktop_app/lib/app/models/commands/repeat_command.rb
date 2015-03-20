class RepeatCommand < Command

  def record_and_execute()
    execute()
  end

  def execute()
    ((@history.get_last_n_operations(@arg)).inject([]) { |output, command| output << command.execute() })[-1]
  end

end