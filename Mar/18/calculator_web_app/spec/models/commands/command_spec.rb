require 'rails_helper'

RSpec.describe Commands::Command, type: :model do

  let(:command) { Commands::Command.new(0, 0) }
  
  it "should record the executed command" do
    expect(command).to receive(:execute).and_return("test")
    expect(command).to receive(:to_s).and_return("test")
    expect{command.record_and_execute()}.to change(History, :count).by(1) 
  end

end