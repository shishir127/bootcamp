require 'spec_helper'

describe Geometry::Length do
  
  let(:distance) { Geometry::Length.new(10) }

  it "returns the distance in millimetres" do
    expect(distance.millimetres).to eq(10.0*100*10)
  end

  it "returns the distance in centimetres" do
    expect(distance.centimetres).to eq(10.0*100)
  end

  it "returns the distance in metres" do
    expect(distance.metres).to eq(10.0)
  end

end