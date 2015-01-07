require 'spec_helper'

describe Point do

	before(:each) do
		@point = Point.new(1,2)
	end

	describe "#new" do
		it "creates a point object" do
			expect(@point).not_to be_nil
		end
	end

	describe "#==" do
		it "returns false when compared with nil" do
			expect(@point == nil).to be false
		end

		it "returns false when compared to another type" do
			expect(@point == 1.0).to be false
		end

		it "returns true when compared to the same point" do
			point2 = Point.new(@point.x, @point.y)
			expect(@point == point2).to be true
		end

		it "returns false when compared to a different point" do
			point2 = Point.new(@point.x+1, @point.y+1)
			expect(@point == point2).to be false
		end

		it "returns true when compared to itself" do
			expect(@point == @point).to be true
		end

		it "follows transitive property of equality" do
			point2 = Point.new(@point.x, @point.y)
			point3 = Point.new(@point.x, @point.y)
			expect((@point == point2) && (point2 == point3) && (@point == point3)).to be true
		end

		it "follows the reflexive property of equality" do
			point2 = Point.new(@point.x, @point.y)
			expect((@point == point2) && (point2 == @point)).to be true
		end
	end

	describe "#hash" do
		it "equal points have equal hashes" do
			point2 = Point.new(@point.x, @point.y)
			expect((@point == point2) && (point2.hash == @point.hash)).to be true
		end
	end

	describe "#distance" do
		it "calculates the distance between two points" do
			point2 = Point.new(@point.x+1, @point.y+1)
			expect(@point.distance(point2)).to be Math.sqrt(2)
		end

		it "returns nil when the argument is nil" do
			expect(@point.distance(nil)).to raise_error
		end

		it "returns nil when the argument is not a Point" do
			expect(@point.distance(1.0)).to raise_error
		end
	end
end