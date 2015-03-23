require 'rails_helper'

RSpec.describe Dispatcher, type: :model do

  let(:calculator) { Calculator.new() }
  let(:controller) { Dispatcher.new(calculator) }

  it "should build the add command" do
    expect(controller.build_command("add", 5)).to be_instance_of(Commands::AddCommand)
  end

  it "should parse and execute the add command" do
    calculator.cancel()
    controller.parse_and_execute("add", "5")
    expect(calculator.number).to eq(5)
  end

  it "should parse and execute the add command and add the command to history" do
    expect{controller.parse_and_record_and_execute("add", "5")}.to change(History, :count).by(1)
  end

end