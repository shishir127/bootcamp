require 'rails_helper'

describe Commands::SqrtCommand do

  let(:calculator) { Calculator.new() }
  let(:command) { Commands::SqrtCommand.new(5, calculator) }

  it "should execute addition on the object passed" do
    calculator.cancel()
    Commands::AddCommand.new(25, calculator).execute()
    expect(command.execute()).to eq(5.0)
  end

  it "should return the name of the command as a string" do
    expect(command.to_s).to eq("sqrt")
  end

end