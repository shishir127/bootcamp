require 'spec_helper'

describe CartesianRectangle do

	before(:each) do
		@top_left = Point.new(0,1)
		@bottom_right = Point.new(2,0)
		@rectangle = CartesianRectangle.new(@top_left, @bottom_right)
	end

	it "calculates the width of the rectangle" do
		expect(@rectangle.width).to eq(2.0)
	end

	it "calcualtes the height of the rectangle" do
		expect(@rectangle.height).to eq(1.0)
	end

	it "calculates the perimeter of the rectangle" do
		expect(@rectangle.perimeter).to eq(6.0)
	end
	
	it "test the Rectangle where both the points are the same" do
		@rectangle = CartesianRectangle.new(@top_left, @top_left)
		expect(@rectangle.perimeter).to eq(0.0)
	end

	it "test the Rectangle where both the points describe a line" do
		@rectangle = CartesianRectangle.new(@top_left, Point.new(@top_left.x+1, @top_left.y))
		expect(@rectangle.perimeter).to eq(2.0)
	end
end