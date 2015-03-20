require 'spec_helper'

describe CancelCommand do

  let(:command) { CancelCommand.new(5, Calculator.new(), History.new()) }

  it "should execute addition on the object passed" do
    expect(command.execute()).to eq(0)
  end

end