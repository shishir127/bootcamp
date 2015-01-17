require 'spec_helper'

describe Geometry::Point do

  let(:point) { Geometry::Point.new(1,2) }

  it "returns false when compared with nil" do
    expect(point == nil).to be false
  end

  it "returns false when compared to another type" do
    expect(point == 1.0).to be false
  end

  it "returns true when compared to the same point" do
    point2 = Geometry::Point.new(point.x, point.y)
    expect(point == point2).to be true
  end

  it "returns false when compared to a different point" do
    point2 = Geometry::Point.new(point.x+1, point.y+1)
    expect(point == point2).to be false
  end

  it "returns true when compared to itself" do
    expect(point == point).to be true
  end

  it "follows transitive property of equality" do
    point2 = Geometry::Point.new(point.x, point.y)
    point3 = Geometry::Point.new(point.x, point.y)
    expect((point == point2) && (point2 == point3) && (point == point3)).to be true
  end

  it "follows the reflexive property of equality" do
    point2 = Geometry::Point.new(point.x, point.y)
    expect((point == point2) && (point2 == point)).to be true
  end

  it "equal points have equal hashes" do
    point2 = Geometry::Point.new(point.x, point.y)
    expect((point == point2) && (point2.hash == point.hash)).to be true
  end
  it "calculates the distance between two points" do
    point2 = Geometry::Point.new(point.x+1, point.y+1)
    expect(point.distance(point2).centimetres).to eq(Math.sqrt(2))
  end

  it "calculates the distance between another point along the X axis" do
    point2 = Geometry::Point.new(point.x+2, point.y)
    expect(point.x_distance(point2).centimetres).to eq(2.0)
  end

  it "calculates the distance between another point along the Y axis" do
    point2 = Geometry::Point.new(point.x, point.y+2)
    expect(point.y_distance(point2).centimetres).to eq(2.0)
  end
end