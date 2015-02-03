require 'spec_helper'

describe Calculator do
  
  let(:calculator) { Calculator.new() }

  it "should add" do 
    expect(calculator.add(5)).to eq(5)
  end

  it "should add" do 
    expect(calculator.add(5)).to eq(5)
  end

  it "should subtract" do 
    expect(calculator.subtract(5)).to eq(-5)
  end

  it "should multiply" do 
    expect(calculator.multiply(5)).to eq(0)
  end

  it "should divide" do 
    expect(calculator.divide(1)).to eq(0)
  end

  it "should reset" do 
    expect(calculator.cancel).to eq(0)
  end

end