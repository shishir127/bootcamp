require 'rails_helper'

RSpec.describe Calculator, :type => :model do

  let(:calculator) { Calculator.new() }

  it "should add" do 
    calculator.cancel()
    expect(calculator.add(5)).to eq(5)
  end

  it "should add" do 
    calculator.cancel()
    expect(calculator.add(5)).to eq(5)
  end
  
  it "should subtract" do 
    calculator.cancel()
    expect(calculator.subtract(5)).to eq(-5)
  end

  it "should multiply" do 
    calculator.cancel()
    expect(calculator.multiply(5)).to eq(0)
  end

  it "should divide" do 
    calculator.cancel()
    expect(calculator.divide(1)).to eq(0)
  end

  it "should reset" do 
    calculator.cancel()
    expect(calculator.cancel()).to eq(0)
  end

  it "should negate the current value" do
    calculator.cancel()
    calculator.add(5)
    expect(calculator.negative).to eq(-5)
  end

  it "should return absolute of current value" do
    calculator.cancel()
    calculator.subtract(5)
    expect(calculator.absolute).to eq(5)
  end

  it "should return square of current value" do
    calculator.cancel()
    calculator.subtract(5)
    expect(calculator.square).to eq(25)
  end

  it "should return square root of current value" do
    calculator.cancel()
    calculator.add(25)
    expect(calculator.sqrt).to eq(5)
  end

  it "should return cube of current value" do
    calculator.cancel()
    calculator.subtract(3)
    expect(calculator.cube).to eq(-27)
  end

  it "should return cube root of current value" do
    calculator.cancel()
    calculator.add(27)
    expect(calculator.cbrt).to eq(3)
  end

  it "should return the number" do
    calculator.cancel()
    calculator.add(27)
    expect(calculator.number).to eq(27)
  end

end