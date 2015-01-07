require 'spec_helper'

describe CartesianRectangle do

	before(:each) do
		@width = Line.new(Point.new(0,0), Point.new(2,0))
		@height = Line.new(Point.new(0,0), Point.new(0,1))
		@rectangle = CartesianRectangle.new(@width, @height)
	end

	it "calculates the perimeter of the rectangle" do
		expect(@rectangle.perimeter).to eq(6.0)
	end

	it "calculates the area of the rectangle" do 
		expect(@rectangle.area).to eq(2.0)
	end
end