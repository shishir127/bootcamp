require 'rails_helper'

RSpec.describe Commands::SubtractCommand, type: :model do
  
  let(:calculator) { Calculator.new() }
  let(:command) { Commands::SubtractCommand.new(5, calculator) }

  it "should execute addition on the object passed" do
    calculator.cancel()
    expect(command.execute()).to eq(-5)
  end

  it "should return the name of the command as a string" do
    expect(command.to_s).to eq("subtract")
  end
  
end