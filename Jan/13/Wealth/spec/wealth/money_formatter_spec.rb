require 'spec_helper'

describe Wealth::MoneyFormatter do
  let(:report1) { Wealth::MoneyFormatter.new }

  it "returns sum in rupees in the required format" do
    expect(report1.rupee_output(123.45)).to eq("Sum = Rs. 123.45")
  end

  it "returns sum in paisa in the required format" do
    expect(report1.paisa_output(12345)).to eq("Sum = 12345 paisa")
  end

end