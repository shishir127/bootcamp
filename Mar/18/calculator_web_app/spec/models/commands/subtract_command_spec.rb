require 'rails_helper'

RSpec.describe Commands::SubtractCommand, type: :model do
  
  let(:command) { Commands::SubtractCommand.new(5, Calculator.new(), History.new()) }

  it "should execute addition on the object passed" do
    expect(command.execute()).to eq(-5)
  end
  
end