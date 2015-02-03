require 'spec_helper'

describe Parser do

  let(:parser) { Parser.new(Calculator.new()) }
  
  it "should parse the add command" do
    expect(parser.parse("add 5")).to eq(5)
  end

  it "should parse the subtract command" do
    expect(parser.parse("subtract 5")).to eq(-5)
  end

  it "should parse the multiply command" do
    expect(parser.parse("multiply 5")).to eq(0)
  end

  it "should parse the divide command" do
    expect(parser.parse("divide 5")).to eq(0)
  end

  it "should parse the cancel command" do
    expect(parser.parse("cancel")).to eq(0)
  end

  it "should not parse an invalid command" do
    expect(parser.parse("adsfasd")).to eq("Invalid input")
  end

end