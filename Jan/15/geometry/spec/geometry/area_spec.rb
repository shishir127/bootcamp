require 'spec_helper'

describe Geometry::Area do

  let(:length1) { Geometry::Length.new(0, 10) }
  let(:length2) { Geometry::Length.new(0, 20) }
  let(:area) { Geometry::Area.new(length1, length2) }
  
  it "returns area in square millimetres" do
    expect(area.square_millimetres).to eq(20000.0)
  end

  it "returns area in square centimetres" do
    expect(area.square_centimetres).to eq(200)
  end

  it "returns area in square metres" do
    expect(area.square_metres).to eq(0.02)
  end
end