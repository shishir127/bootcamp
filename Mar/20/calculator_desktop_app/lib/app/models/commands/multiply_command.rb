class MultiplyCommand < Command

  def execute()
    @target.multiply(@arg)
  end

end