require 'spec_helper'

describe AddCommand do

  let(:history) { History.new() }
  let(:command) { AddCommand.new(5, Calculator.new(), history) }

  it "should execute addition on the object passed" do
    expect(command.record_and_execute()).to eq(5)
  end

end