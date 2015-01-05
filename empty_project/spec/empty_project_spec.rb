require './spec_helper'

describe EmptyProject, "#output" do
	it "returns hello world" do 
		empty_project = EmptyProject.new
		emptyProject.output.should eql "Hello world!"
	end
end

# require './spec_helper'

# describe Bowling, "#score" do
#   it "returns 0 for all gutter game" do
#     bowling = Bowling.new
#     20.times { bowling.hit(0) }
#     bowling.score.should eq(0)
#   end
# end