require 'rails_helper'

RSpec.describe Commands::AddCommand, type: :model do

  let(:calculator) {  Calculator.new() }
  let(:command) { Commands::AddCommand.new(5, calculator) }

  it "should execute addition on the object passed" do
    calculator.cancel()
    expect(command.execute()).to eq(5)
  end

  it "should return the name of the command" do
    expect(command.to_s).to eq("add")
  end

end