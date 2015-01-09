require 'spec_helper'

describe Wealth::Money do
  let(:wealth1) { Wealth::Money.new(123, 45) }
  let(:wealth2) { Wealth::Money.new(987, 65) }
  let(:wealth3) { Wealth::Money.new(912, 83) }
  let(:wealth1_duplicate) { Wealth::Money.new(wealth1.rupees, wealth1.paisa) }
  let(:wealth_rogue_input) { Wealth::Money.new(123, 233) }

  it "gets the amount in rupees" do
    expect(wealth1.amountInRupees).to eq(123.45)
  end

  it "gets the amount in paisa" do
    expect(wealth1.amountInPaisa).to eq(12345)
  end

  it "adjusts for more than 2 precision inputs for paisa" do
    expect(wealth_rogue_input.amountInRupees).to eq(125.33)
  end

  # it "raise exception for negative amounts" do
  #   expect(Wealth::Money.new(-123.45)).to raise_error
  # end

  it "displays the reflexive property of equality" do
    expect(wealth1 == wealth1).to be true
  end

  it "displays the symmetric property of equality" do
    expect(wealth1 == wealth1_duplicate).to be true
  end

  it "displays the transitive property of equality" do
    wealth1_duplicate2 = Wealth::Money.new(wealth1.rupees, wealth1.paisa)
    expect((wealth1 == wealth1_duplicate2) && (wealth1_duplicate2 == wealth1_duplicate) && (wealth1 == wealth1_duplicate)).to be true
  end

  it "displays the substition property" do
    expect(wealth1_duplicate + wealth2).to eq(wealth1 + wealth2)
  end

  it "adds two amounts of money" do
    expect((wealth1 + wealth2).amountInRupees).to eq(1111.1)
  end

  it "displays the commutative property of addition" do
    expect(wealth1 + wealth2).to eq(wealth2 + wealth1)
  end

  it "displays the associative property of addition" do
    expect((wealth1 + wealth2) + wealth3).to eq(wealth1 + (wealth2 + wealth3))
  end
end