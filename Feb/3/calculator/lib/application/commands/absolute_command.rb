class AbsoluteCommand < Command

  def execute()
    @target.absolute()
  end

end