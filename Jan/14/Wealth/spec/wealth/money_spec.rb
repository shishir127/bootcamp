require 'spec_helper'

describe Wealth::Money do
  let(:wealth1) { Wealth::Money.new(123, 45) }
  let(:wealth2) { Wealth::Money.new(987, 65) }
  let(:wealth3) { Wealth::Money.new(912, 83) }
  let(:wealth1_duplicate) { Wealth::Money.new(0, wealth1.amount_in_paisa) }
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
    wealth1_duplicate2 = Wealth::Money.new(0, wealth1.amount_in_paisa)
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

  it "gives the difference between two amounts of money" do
    expect((wealth2 - wealth1).amount_in_rupees).to eq(864.2)
  end

  it "gives a negative amount when a bigger amount is subtracted from a smaller amount" do
    expect((wealth1 - wealth2).amount_in_rupees).to eq(-864.2)
  end

  it "subtraction of money is not commutative" do
    expect(wealth1 - wealth2).not_to eq(wealth2 -  wealth1)
  end

  it "subtraction is not associative" do
    expect(wealth1 - (wealth2 - wealth3)).not_to eq((wealth1 - wealth2) - wealth3)
  end

  it "subtracting an amount from 0 results in the negative of the amount" do
    expect(Wealth::Money.new(0,0) - wealth1).to eq(Wealth::Money.new(0, -1 * wealth1.amount_in_paisa))
  end

  it "two objects with the same fields have the same hash" do
    expect(wealth1.hash).to eq(wealth1_duplicate.hash)
  end

  it "returns the output in rupees and paisa" do
    expect(wealth1.to_s).to eq("123 rupees, 45 paisa")
  end

  it "comparision operator returns -1 when compared with a bigger sum of money" do
    expect(wealth1 <=> wealth2).to eq(-1)
  end

  it "comparision operator returns 0 when compared to an equal sum of money" do
    expect(wealth1 <=> wealth1_duplicate).to eq(0)
  end

  it "comparision operator returns 1 when compared to a greater sum of money" do
    expect(wealth2 <=> wealth1).to eq(1)
  end

  it "comparision operator returns nil when compared to an object that is not Money" do
    expect(wealth2 <=> 1.0).to eq(nil)
  end

  it "sorts an array of Money objects" do
    test_array = [wealth1, wealth2, wealth3, wealth1_duplicate, wealth_rogue_input]
    expect(test_array.sort).to eq([wealth1, wealth1_duplicate, wealth_rogue_input, wealth3, wealth2])
  end

  it "greater than operator returns true when compared to a smaller sum of money" do
    expect(wealth2 > wealth1).to be true
  end

  it "greater than operator returns false when compared to a bigger sum of money" do
    expect(wealth1 > wealth2).to be false
  end

  it "lesser than operator returns false when compared to a smaller sum of money" do
    expect(wealth2 < wealth1).to be false
  end

  it "lesser than operator returns true when compared to a bigger sum of money" do
    expect(wealth1 < wealth2).to be true
  end

  it "greater than or equal operator returns true when compared to smaller a sum of money" do
    expect(wealth2 >= wealth1).to be true
  end

  it "greater than or equal operator returns true when compared to an equal sum of money" do
    expect(wealth1 >= wealth1_duplicate).to be true
  end

  it "greater than or equal operator returns false when compared to a smaller sum of money" do
    expect(wealth1 >= wealth2).to be false
  end

  it "lesser than or equal operator returns true when compared to a bigger sum of money" do
    expect(wealth1 <= wealth2).to be true
  end

  it "lesser than or equal operator returns true when compared to an equal sum of money" do
    expect(wealth1 <= wealth1_duplicate).to be true
  end

  it "lesser than or equal operator returns false when compared to a bigger sum of money" do
    expect(wealth2 <= wealth1).to be false
  end
end