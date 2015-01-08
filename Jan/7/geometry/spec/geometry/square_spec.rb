require 'spec_helper'

describe Geometry::Square do

	let(:width) { Geometry::Line.new(Geometry::Point.new(0,0), Geometry::Point.new(2,0)) }
	let(:square) { Geometry::Square.new(width, width) }

	it "calculates area of the square" do
		expect(square.area).to eq(4.0)
	end

  it "calculates the perimeter of the square" do
    expect(square.perimeter).to eq(8.0)
  end
end