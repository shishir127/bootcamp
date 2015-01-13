require 'spec_helper'

describe Wealth::MoneyFormatter do
  let(:wealth1) { Wealth::Money.new(123, 45) }
  let(:report1) { Wealth::MoneyFormatter.new(Wealth::Money.new(123, 45)) }
  # let(:wealth2) { Wealth::Money.new(987, 65) }

  it "returns sum in rupees in the required format" do
    expect(report1.output_in_rupees).to eq("Sum = Rs. 123.45")
  end

  it "returns sum in paisa in the required format" do
    expect(report1.output_in_paisa).to eq("Sum = 12345 paisa")
  end

end