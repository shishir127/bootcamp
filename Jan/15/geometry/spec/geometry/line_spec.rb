require 'spec_helper'

describe Geometry::Line do
  
  let(:p_start) { Geometry::Point.new(0,0) }
  let(:p_end) { Geometry::Point.new(4.0,3.0) }
  let(:line) { Geometry::Line.new(p_start, p_end) }
  let(:line_inverse) { Geometry::Line.new(p_end, p_start) }
  let(:line_duplicate) { Geometry::Line.new(p_start, p_end) }

  describe "#length" do
    it "returns length" do  
      expect(line.length.centimetres).to eq(5.0)
    end
  end

  describe "#==" do
    it "returns false when compared to nil" do
      expect(line).not_to be_nil
    end

    it "returns false when compared to an object of different type" do
      expect(line == 1.0).to be false
    end

    it "returns true if coordinates are equal" do
      expect(line == line_duplicate).to be true
    end

    it "returns true if coordinates are equal but sequence of coordinates in the constructor is different" do
      expect(line == line_duplicate).to be true
    end

    it "returns true when compared to itself" do
      expect(line == line).to be true
    end

    it "returns false when compared to an unequal line" do
      p_dummy = Geometry::Point.new(5,0)
      line2 = Geometry::Line.new(p_start, p_dummy)
      expect(line == line2).to be false
    end

    it "transitive property holds true" do
      expect((line == line_duplicate) && (line_duplicate == line_inverse) && (line_inverse == line)).to be true
    end

    it "reflexive property holds true" do
      expect((line == line_duplicate) && (line_duplicate == line)).to be true
    end
  end

  describe "#eql?" do
    it "returns false when compared to nil" do
      expect(line.eql?(nil)).to be false
    end

    it "returns false when compared to an object of different type" do
      expect(line.eql?(1.0)).to be false
    end

    it "returns true if coordinates are equal" do
      expect(line.eql?(line_duplicate)).to be true
    end

    it "returns true if coordinates are equal but sequence of coordinates in the constructor is different" do
      line2 = Geometry::Line.new(p_start, p_end)
      expect(line.eql?(line2)).to be true
    end

    it "returns true when compared to itself" do
      expect(line.eql?(line)).to be true
    end

    it "returns false when compared to an unequal line" do
      p_dummy = Geometry::Point.new(5,0)
      line2 = Geometry::Line.new(p_start, p_dummy)
      expect(line.eql?(line2)).to be false
    end

    it "transitive property holds true" do
      line2 = Geometry::Line.new(p_start, p_end)
      expect(line.eql?(line2) && line2.eql?(line_inverse) && line_inverse.eql?(line)).to be true
    end

    it "transitive property holds true" do
      line2 = Geometry::Line.new(p_start, p_end)
      expect((line == line2) && (line2 == line)).to be true
    end
  end

  describe "#hash" do
    it "equal lines have equal hashes" do
      line2 = Geometry::Line.new(p_start, p_end)
      expect((line.hash == line2.hash) && (line == line2)).to be true
    end
  end
end