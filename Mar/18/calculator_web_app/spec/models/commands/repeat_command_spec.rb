require 'rails_helper'

describe Commands::RepeatCommand do

  let(:calc) { Calculator.new() }
  let(:history) { History.new() }
  let(:command) { Commands::RepeatCommand.new(1, calc, history) }
  let(:add) { Commands::AddCommand.new(5, calc, history) }

  it "should execute addition on the object passed" do
    add.record_and_execute()
    expect(command.execute()).to eq([10])
  end

end