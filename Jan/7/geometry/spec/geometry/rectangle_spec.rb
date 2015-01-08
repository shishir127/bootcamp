require 'spec_helper'

describe Geometry::Rectangle do

  let(:width) {Geometry::Line.new(Geometry::Point.new(0,0), Geometry::Point.new(2,0))}
  let(:height) {Geometry::Line.new(Geometry::Point.new(0,0), Geometry::Point.new(0,1))}
  let(:rectangle) {Geometry::Rectangle.new(width, height)}

  it "calculates the width of the rectangle" do
    expect(rectangle.width).to eq(2.0)
  end

  it "calcualtes the height of the rectangle" do
    expect(rectangle.height).to eq(1.0)
  end

  it "calculates the perimeter of the rectangle" do
    expect(rectangle.perimeter).to eq(6.0)
  end

  it "calculates the area of the rectangle" do 
    expect(rectangle.area).to eq(2.0)
  end 
end