require 'spec_helper'

describe Dispatcher do

  let(:calculator) { Calculator.new() }
  let(:controller) { Dispatcher.new(calculator) }

  it "should build the add command" do
    expect(controller.build_command("add", 5)).to be_instance_of(AddCommand)
  end

  it "should parse and execute the add command" do
    expect(controller.parse_and_execute("add", "5")).to eq(5)
  end

end