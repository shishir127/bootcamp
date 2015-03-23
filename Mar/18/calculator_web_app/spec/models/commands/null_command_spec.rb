require 'rails_helper'

RSpec.describe Commands::NullCommand, type: :model do

  let(:calculator) { Calculator.new() }
  let(:command) { Commands::NullCommand.new("blah", calculator) }

  it "should not change the input object's state" do
    state = calculator.number
    command.execute()
    expect(calculator.number).to eq(state)
  end

  it "should not register in history" do
    expect{command.record_and_execute()}.to change(History, :count).by(0)
  end

  it "should return the name of the command as a string" do
    expect(command.to_s).to eq("null")
  end

end