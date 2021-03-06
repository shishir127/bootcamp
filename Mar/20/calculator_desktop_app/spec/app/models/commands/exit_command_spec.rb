require 'spec_helper'

describe ExitCommand do 

  let(:command) { ExitCommand.new(0, nil, History.new()) }

  it "should exit the program" do
    allow(command).to receive(:abort) { "success" }
    expect(command.execute()).to eq("success")
  end

end