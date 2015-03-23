require 'rails_helper'

RSpec.describe Commands::MultiplyCommand, type: :model do
  
  let(:command) { Commands::MultiplyCommand.new(5, Calculator.new()) }

  it "should execute addition on the object passed" do
    expect(command.execute()).to eq(0)
  end

  it "should return the name of the command as a string" do
    expect(command.to_s).to eq("multiply")
  end

end