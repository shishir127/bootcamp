require 'spec_helper'

describe Square do

	let(:width) {Line.new(Point.new(0,0), Point.new(2,0))}
	let(:square) {Square.new(width)}

	it "calculates area of the square" do
		expect(square.area).to eq(4.0)
	end
end