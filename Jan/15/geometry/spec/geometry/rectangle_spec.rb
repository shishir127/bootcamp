require 'spec_helper'

describe Geometry::Rectangle do

  let(:width) { Geometry::Line.new(Geometry::Point.new(0,0), Geometry::Point.new(2,0)) }
  let(:height) { Geometry::Line.new(Geometry::Point.new(0,0), Geometry::Point.new(0,1)) }
  let(:rectangle) { Geometry::Rectangle.new(width, height) }
  let(:square) { Geometry::Rectangle.getSquare(width) }

  it "calculates the perimeter of the rectangle" do
    expect(rectangle.perimeter.centimetres).to eq(6.0)
  end

  it "calculates the area of the rectangle in square centimetres" do 
    expect(rectangle.square_centimetre_area).to eq(2.0)
  end 

  it "calculates the area of the rectangle in square millimetres" do 
    expect(rectangle.square_millimetre_area).to eq(200.0)
  end 

  it "calculates the area of the rectangle in square metres" do 
    expect(rectangle.square_metre_area).to eq(0.0002)
  end 

  it "calculates the perimeter of the square" do
    expect(square.perimeter.centimetres).to eq(8.0)
  end

  it "calcualtes the area of the square" do
    expect(square.square_centimetre_area).to eq(4.0)
  end
end