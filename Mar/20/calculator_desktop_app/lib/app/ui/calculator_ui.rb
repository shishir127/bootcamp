include Java
require 'java'

java_import java.awt.Color
java_import java.awt.Font
java_import java.awt.Dimension
java_import java.awt.Toolkit
java_import java.awt.event.ActionListener
java_import java.awt.event.KeyEvent
java_import java.awt.event.KeyListener
java_import javax.swing.JFrame
java_import javax.swing.BoxLayout
java_import java.awt.GridLayout
java_import java.awt.FlowLayout
java_import javax.swing.JLabel
java_import javax.swing.ImageIcon
java_import javax.swing.JPanel
java_import javax.swing.Timer
java_import javax.swing.Box
java_import javax.swing.JButton


class CalculatorGUI < JFrame

  attr_writer :dispatcher

  def initialize()
    super
    self.initUI
  end

  def initUI
    basic = JPanel.new
    basic.setLayout BoxLayout.new basic, BoxLayout::Y_AXIS
    self.add basic

    basic.add Box.createVerticalGlue

    operandRow = build_box_layout_with_label_and_field("Operand\t-\t", "0")
    resultRow = build_box_layout_with_label_and_field("Result\t-\t", "0")

    inputGrid = JPanel.new
    inputGrid.setLayout GridLayout.new 1 , 2

    inputGrid.add build_numpad(get_field(operandRow))
    inputGrid.add build_operation_pad(get_field(operandRow), get_field(resultRow))

    basic.add operandRow
    basic.add resultRow
    basic.add inputGrid

    set_main_window_properties(self)
  end

  def set_main_window_properties(window)
    window.setDefaultCloseOperation JFrame::EXIT_ON_CLOSE
    window.setSize 600, 300
    window.setLocationRelativeTo nil
    window.setVisible true
  end

  def build_numpad(operand_field)
    numpadListener = NumpadListener.new(operand_field)
    numpad = JPanel.new
    numpad.setLayout BoxLayout.new numpad, BoxLayout::Y_AXIS
    numpad.add build_flow_layout_with_buttons_and_set_button_handler(numpadListener, "1", "2", "3")
    numpad.add build_flow_layout_with_buttons_and_set_button_handler(numpadListener, "4", "5", "6")
    numpad.add build_flow_layout_with_buttons_and_set_button_handler(numpadListener, "7", "8", "9")
    numpad.add build_flow_layout_with_buttons_and_set_button_handler(numpadListener, "0", "Back")
    return numpad
  end

  def build_operation_pad(operand_field, result_field)
    operationsListener = OperationsListener.new(self, operand_field, result_field)
    opPad = JPanel.new
    opPad.setLayout BoxLayout.new opPad, BoxLayout::Y_AXIS
    opPad.add build_flow_layout_with_buttons_and_set_button_handler(operationsListener, "add", "subtract", "multiply")
    opPad.add build_flow_layout_with_buttons_and_set_button_handler(operationsListener, "divide", "cancel", "absolute")
    opPad.add build_flow_layout_with_buttons_and_set_button_handler(operationsListener, "negative", "square", "sqrt")
    opPad.add build_flow_layout_with_buttons_and_set_button_handler(operationsListener, "cube", "cbrt", "repeat")
    return opPad
  end

  def build_box_layout_with_label_and_field(label_text, field_text)
    row = JPanel.new
    row.setLayout BoxLayout.new row, BoxLayout::X_AXIS
    label = JLabel.new label_text
    field = JLabel.new field_text
    row.add label
    row.add field
    return row
  end

  def parse_and_execute(operation, operand)
    @dispatcher.parse_and_execute(operation, operand)
  end

  def get_field(panel)
    components = panel.getComponents()
    components[1]
  end

  def build_flow_layout_with_buttons_and_set_button_handler(handler, *args)
    row = JPanel.new
    row.setLayout FlowLayout.new
    args.each do |arg|
      button =JButton.new(arg)
      button.addActionListener(handler) 
      row.add button
    end
    return row
  end

end