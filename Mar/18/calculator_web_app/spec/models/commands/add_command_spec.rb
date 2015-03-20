require 'rails_helper'

RSpec.describe Commands::AddCommand, type: :model do

  let(:history) { History.new() }
  let(:command) { Commands::AddCommand.new(5, Calculator.new(), history) }

  it "should execute addition on the object passed" do
    expect(command.record_and_execute()).to eq(5)
  end

end