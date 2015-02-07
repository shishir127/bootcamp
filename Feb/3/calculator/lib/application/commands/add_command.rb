class AddCommand < Command

  def execute()
    @target.add(@arg)
  end

end