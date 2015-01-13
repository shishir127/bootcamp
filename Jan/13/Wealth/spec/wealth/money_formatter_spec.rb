require 'spec_helper'

describe Wealth::MoneyFormatter do
  let(:wealth1) { Wealth::Money.new(123, 45) }
  let(:report1) { Wealth::MoneyFormatter.new }

  it "returns sum in rupees in the required format" do
    expect(report1.output(report1.rupee_formatter(wealth1.amount_in_rupees))).to eq("Sum = Rs. " + wealth1.amount_in_rupees.to_s)
  end

  it "returns sum in paisa in the required format" do
    expect(report1.output(report1.paisa_formatter(wealth1.amount_in_paisa))).to eq("Sum = " + wealth1.amount_in_paisa.to_s + " paisa")
  end

end