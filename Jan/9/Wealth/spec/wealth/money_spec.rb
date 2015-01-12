 require 'spec_helper'

describe Wealth::Money do
        let(:wealth1) { Wealth::Money.new(123, 45) }
  let(:wealth2) { Wealth::Money.new(987, 65) }
  let(:wealth3) { Wealth::Money.new(912, 83) }
  let(:wealth1_duplicate) { Wealth::Money.new(wealth1.rupees, wealth1.paisa) }
  let(:wealth_rogue_input) { Wealth::Money.new(123, 233) }

  it "gets the amount in rupees" do
    expect(wealth1.amount_in_rupees).to eq(123.45)
  end

  it "gets the amount in paisa" do
    expect(wealth1.amount_in_paisa).to eq(12345)
  end

  it "adjusts for more than 2 precision inputs for paisa" do
    expect(wealth_rogue_input.amount_in_rupees).to eq(125.33)
  end

  it "displays the reflexive property of equality" do
    expect(wealth1).to eq(wealth1)
  end

  it "displays the symmetric property of equality" do
    expect(wealth1).to eq(wealth1_duplicate)
  end

  it "displays the transitive property of equality" do
    wealth1_duplicate2 = Wealth::Money.new(wealth1.rupees, wealth1.paisa)
    expect((wealth1 == wealth1_duplicate2) && (wealth1_duplicate2 == wealth1_duplicate) && (wealth1 == wealth1_duplicate)).to be true
  end

  it "displays the substition property" do
    expect(wealth1_duplicate + wealth2).to eq(wealth1 + wealth2)
  end

  it "adds two amounts of money" do
    expect((wealth1 + wealth2).amount_in_rupees).to eq(1111.1)
  end

  it "displays the commutative property of addition" do
    expect(wealth1 + wealth2).to eq(wealth2 + wealth1)
  end

  it "displays the associative property of addition" do
    expect((wealth1 + wealth2) + wealth3).to eq(wealth1 + (wealth2 + wealth3))
  end

  it "two objects with the same fields have the same hash" do
    expect(wealth1.hash).to eq(wealth1_duplicate.hash)
  end
end