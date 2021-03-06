require 'spec_helper'

describe History do

  let(:player) { History.new() }
  let(:calculator) { Calculator.new() }
  let(:add) { AddCommand.new(-5, calculator, player) }
  let(:subtract) { SubtractCommand.new(-20, calculator, player) }

  it "should record objects" do
    player.record("hello")
    player.record("world")
    expect(player.stack.join(" ")).to eq("hello world")
  end

  it "should retrieve last n objects on the stack" do
    add.record_and_execute()
    subtract.record_and_execute()
    expect(player.get_last_n_operations(2)).to eq([add, subtract])
  end

end