require 'rails_helper'

RSpec.describe Commands::NullCommand, type: :model do

  let(:calculator) { Calculator.new() }
  let(:history) { History.new() }
  let(:command) { Commands::NullCommand.new("blah", calculator, history) }

  it "should not change the input object's state" do
    state = calculator.number
    command.execute()
    expect(calculator.number).to eq(state)
  end

  it "should not register in history" do
    state = history.stack
    command.record_and_execute()
    expect(history.stack).to eq(state)
  end

end