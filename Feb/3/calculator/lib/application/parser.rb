class Parser

  def initialize(object)
    @object = object
  end

  def parse(input_string)
    input_components = input_string.split(" ")
    # p input_components[0].to_sym
    begin
      if (input_components[0] == "cancel" || input_components[0] == "exit")
        @object.send(input_components[0].to_sym)
      else
        @object.send(input_components[0].to_sym, input_components[1].to_f)
      end
    rescue Exception => e
      "Invalid input"
    end
  end
end