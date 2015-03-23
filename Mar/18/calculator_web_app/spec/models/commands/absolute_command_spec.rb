require 'rails_helper'

describe Commands::AbsoluteCommand do

  let(:calculator) { Calculator.new() }
  let(:command) { Commands::AbsoluteCommand.new(5, calculator) }

  it "should return absolute value of the number" do
    calculator.cancel()
    Commands::AddCommand.new(-5, calculator).execute()
    expect(command.execute()).to eq(5)
  end

  it "should return the name of the command as a string" do
    expect(command.to_s()).to eq("absolute")
  end

end