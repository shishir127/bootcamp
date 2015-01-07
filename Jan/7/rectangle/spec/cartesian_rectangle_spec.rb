require 'spec_helper'

describe CartesianRectangle do

	before(:each) do
		@top_left = Point.new(0,1)
		@bottom_right = Point.new(2,0)
		@rectangle = CartesianRectangle.new(@top_left, @bottom_right)
	end

	describe "#width" do
		it "calculates the width of the rectangle" do
			expect(@rectangle.width).to eq(2.0)
		end
	end

	describe "#height" do
		it "calcualtes the height of the rectangle" do
			expect(@rectangle.height).to eq(1.0)
		end
	end

	describe "#perimeter" do
		it "calculates the perimeter of the rectangle" do
			expect(@rectangle.perimeter).to eq(6.0)
		end
	end
end