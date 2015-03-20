class ExitCommand < Command

  def record_and_execute()
    execute()
  end

  def execute()
    abort
  end

end