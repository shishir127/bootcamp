class CalculatorController < ApplicationController

  def index
    @calculator = Calculator.new()
  end

  def execute
    @calculator = Calculator.new()
    @dispatcher = Dispatcher.new(@calculator)
    @dispatcher.parse_and_record_and_execute(params[:operation],params[:operand])
    render :index
  end

  private

end