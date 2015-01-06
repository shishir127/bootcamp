require 'spec_helper'

describe Line, "#length" do
	it "returns length" do
		line = Line.new(0,0, 4.0,3.0)
		line.length.should eql 5.0
	end
end