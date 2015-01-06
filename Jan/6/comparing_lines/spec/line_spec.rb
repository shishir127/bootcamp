require 'spec_helper'

describe Line do
	describe "#length" do
		it "returns length" do
			line = Line.new(0,0, 4.0,3.0)
			line.length.should eql 5.0
		end
	end

	describe "#==" do
		it "returns false when compared to nil" do
			line1 = Line.new(0,0, 4.0,3.0)
			(line1==nil).should eql false
		end

		it "returns false when compared to an object of different type" do
			line1 = Line.new(0,0, 4.0,3.0)
			(line1 == 1.0).should eql false
		end

		it "returns true if coordinates are equal" do
			line1 = Line.new(0,0, 4.0,3.0)
			line2 = Line.new(0,0, 4.0,3.0)
			(line1 == line2).should eql true
		end

		it "returns true if coordinates are equal but sequence of coordinates in the constructor is different" do
			line1 = Line.new(0,0, 4.0,3.0)
			line2 = Line.new(4.0,3.0, 0,0)
			(line1 == line2).should eql true
		end

		it "returns true when compared to itself" do
			line = Line.new(0,0, 4.0,3.0)
			(line == line).should eql true
		end

		it "returns false when compared to an unequal line" do
			line1 = Line.new(0,0, 4.0,3.0)
			line2 = Line.new(0,0, 0.0,5.0)
			(line1 == line2).should eql false
		end

		it "transitive property holds true" do
			line1 = Line.new(0,0, 4.0,3.0)
			line2 = Line.new(0,0, 4.0,3.0)
			line3 = Line.new(4.0,3.0, 0,0)
			((line1 == line2) && (line2 == line3) && (line3 == line1)).should eql true
		end
	end

	describe "#eql?" do
		it "returns false when compared to nil" do
			line1 = Line.new(0,0, 4.0,3.0)
			line1.eql?(nil).should eql false
		end

		it "returns false when compared to an object of different type" do
			line1 = Line.new(0,0, 4.0,3.0)
			line1.eql?(1.0).should eql false
		end

		it "returns false when compared to nil" do
			line1 = Line.new(0,0, 4.0,3.0)
			line1.eql?(nil).should eql false
		end

		it "returns true if coordinates are equal" do
			line1 = Line.new(0,0, 4.0,3.0)
			line2 = Line.new(0,0, 4.0,3.0)
			line1.eql?(line2).should eql true
		end

		it "returns true if coordinates are equal but sequence of coordinates in the constructor is different" do
			line1 = Line.new(0,0, 4.0,3.0)
			line2 = Line.new(4.0,3.0, 0,0)
			line1.eql?(line2).should eql true
		end

		it "returns true when compared to itself" do
			line = Line.new(0,0, 4.0,3.0)
			line.eql?(line).should eql true
		end

		it "returns false when compared to an unequal line" do
			line1 = Line.new(0,0, 4.0,3.0)
			line2 = Line.new(0,0, 0.0,5.0)
			line1.eql?(line2).should eql false
		end

		it "transitive property holds true" do
			line1 = Line.new(0,0, 4.0,3.0)
			line2 = Line.new(0,0, 4.0,3.0)
			line3 = Line.new(4.0,3.0, 0,0)
			(line1.eql?(line2) && line2.eql?(line3) && line3.eql?(line1)).should eql true
		end
	end
end