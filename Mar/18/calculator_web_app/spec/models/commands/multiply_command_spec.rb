require 'rails_helper'

RSpec.describe Commands::MultiplyCommand, type: :model do
  
  let(:command) { Commands::MultiplyCommand.new(5, Calculator.new(), History.new()) }

  it "should execute addition on the object passed" do
    expect(command.execute()).to eq(0)
  end

end