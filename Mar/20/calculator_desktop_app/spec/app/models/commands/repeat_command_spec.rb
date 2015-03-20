require 'spec_helper'

describe RepeatCommand do

  let(:calc) { Calculator.new() }
  let(:history) { History.new() }
  let(:command) { RepeatCommand.new(1, calc, history) }
  let(:add) { AddCommand.new(5, calc, history) }

  it "should execute addition on the object passed" do
    add.record_and_execute()
    expect(command.execute()).to eq(10)
  end

end