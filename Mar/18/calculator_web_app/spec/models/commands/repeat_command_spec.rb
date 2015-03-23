require 'rails_helper'

describe Commands::RepeatCommand do

  let(:calc) { Calculator.new() }
  let(:dispatcher) { Dispatcher.new(calc) }
  let(:command) { Commands::RepeatCommand.new(1, calc, dispatcher) }
  let(:add) { Commands::AddCommand.new(5, calc) }

  it "should execute the last n commands from history" do
    calc.cancel()
    add.record_and_execute()
    command.execute()
    expect(calc.number).to eq(10)
  end

  it "should not record the repeat command" do
    add.record_and_execute()
    expect{command.execute}.to change(History, :count).by(0)
  end

  it "should return the name of the command as a string" do
    expect(command.to_s).to eq("repeat")
  end

end