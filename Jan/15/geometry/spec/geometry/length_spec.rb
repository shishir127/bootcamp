require 'spec_helper'

describe Geometry::Length do

  let(:length1) { Geometry::Length.new(1) }
  let(:length2) { Geometry::Length.new(0,10) }
  let(:length3) { Geometry::Length.new(0,100) }
  let(:length4) { Geometry::Length.new(0,0,100*10) }

  it "returns the length in millimetres" do
    expect(length1.millimetres).to eq(1*100*10)
  end

  it "returns the length in centimetres" do
    expect(length1.centimetres).to eq(1*100)
  end

  it "returns the length in metres" do
    expect(length2.metres).to eq(0.10)
  end

  it "satisfies the reflexive property of equality" do
    expect(length1).to eq(length3)
  end

  it "satisfies the transitive property of equality" do
    expect((length1 == length3) && (length3 == length4) && (length4 == length1)).to be true
  end

  it "returns true when compared to itself" do
    expect(length1).to eq(length1)
  end

  it "returns false when compared to an unequal length" do
    expect(length1).not_to eq(length2)
  end

  it "the hash of equal lengths are equal" do
    expect(length1.hash).to eq(length3.hash)
  end

  it "adds two lengths" do
    expect((length1 + length2).centimetres).to eq(110.0)
  end

  it "satisfies the commutative property of addition" do
    expect(length1 + (length2 + length3)).to eq((length1 + length2) + length3)
  end

  it "satisfies the reflexive property of addition" do
    expect(length1 + length2).to eq(length2 + length1)
  end

  it "scales the length when multiplied by a scalar" do
    expect((length1.scale(2.0)).metres).to eq(2.0)
  end
end