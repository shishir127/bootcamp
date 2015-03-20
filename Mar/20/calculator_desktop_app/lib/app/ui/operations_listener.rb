class OperationsListener

  def initialize(dispatcher, operand_field, result_field)
    @dispatcher = dispatcher
    @result_field = result_field
    @operand_field = operand_field
  end

  def actionPerformed(e)
    operation = e.getSource().getText()
    operand = @operand_field.getText()
    @result_field.setText(@dispatcher.parse_and_execute(operation, operand).to_s);
    @operand_field.setText("0");
  end
end