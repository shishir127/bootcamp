require 'rails_helper'

describe Commands::SquareCommand do

  let(:calculator) { Calculator.new() }
  let(:command) { Commands::SquareCommand.new(5, calculator) }

  it "should square the existing number" do
    calculator.cancel()
    Commands::AddCommand.new(5, calculator).execute()
    expect(command.execute()).to eq(25)
  end

  it "should return the name of the command as a string" do
    expect(command.to_s).to eq("square")
  end

end