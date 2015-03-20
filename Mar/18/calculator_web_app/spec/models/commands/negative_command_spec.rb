require 'rails_helper'

RSpec.describe Commands::NegativeCommand, type: :model do

  let(:command) { Commands::NegativeCommand.new(5, Calculator.new(),History.new()) }

  it "should execute addition on the object passed" do
    expect(command.execute()).to eq(0)
  end

end