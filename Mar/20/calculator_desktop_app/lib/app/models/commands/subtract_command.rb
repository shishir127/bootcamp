class SubtractCommand < Command

  def execute()
    @target.subtract(@arg)
  end

end