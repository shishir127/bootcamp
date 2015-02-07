require 'spec_helper'

describe SubtractCommand do
  
  let(:command) { SubtractCommand.new(5, Calculator.new(), History.new()) }

  it "should execute addition on the object passed" do
    expect(command.execute()).to eq(-5)
  end
  
end