class NegativeCommand < Command

  def execute()
    @target.negative()
  end

end