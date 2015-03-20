class DivideCommand < Command

  def execute()
    @target.divide(@arg)
  end

end