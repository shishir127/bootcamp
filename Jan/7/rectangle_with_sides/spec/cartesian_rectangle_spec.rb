require 'spec_helper'

describe CartesianRectangle do

	let(:width) {Line.new(Point.new(0,0), Point.new(2,0))}
	let(:height) {Line.new(Point.new(0,0), Point.new(0,1))}
	let(:rectangle) {CartesianRectangle.new(width, height)}

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