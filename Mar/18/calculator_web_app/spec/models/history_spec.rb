require 'rails_helper'

RSpec.describe History, type: :model do

  let(:calculator) { Calculator.new() }
  let(:add) { Commands::AddCommand.new(-5, calculator) }
  let(:subtract) { Commands::SubtractCommand.new(-20, calculator) }

  it "should retrieve last n objects on the stack" do
    add.record_and_execute()
    subtract.record_and_execute()
    expect(History.get_last_n_operations(2).size()).to eq(2)
  end

end