class CalculatorController < ApplicationController

  def index
    # check_nil_and_initialize()
    @calculator = @@calculator
  end

  def execute
    # check_nil_and_initialize()
    @@dispatcher.parse_and_execute(params[:operation],params[:operand])
    render :index
  end

  private

  def check_nil_and_initialize()
    @@dispatcher = Dispatcher.new() if @@dispatcher.nil?
    @@calculator = @@dispatcher.calculator if @@calculator.nil?
  end

end