class NumpadListener

  def initialize(text_field)
    @text_field = text_field
  end

  def actionPerformed(e)
    button_text = e.getSource().getText()
    if button_text == "Back"
      @text_field.setText(@text_field.getText()[0...-1])
    else  
      @text_field.setText(@text_field.getText() + button_text)
    end
  end

end