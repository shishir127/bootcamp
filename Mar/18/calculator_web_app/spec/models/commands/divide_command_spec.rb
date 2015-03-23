require 'rails_helper'

describe Commands::DivideCommand do

  let(:command) { Commands::DivideCommand.new(5, Calculator.new()) }

  it "should execute addition on the object passed" do
    expect(command.execute()).to eq(0)
  end

  it "should return the name of the command as a string" do
    expect(command.to_s).to eq("divide")
  end

end