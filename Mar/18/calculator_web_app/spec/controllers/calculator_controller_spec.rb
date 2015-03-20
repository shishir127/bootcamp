require 'rails_helper'

RSpec.describe CalculatorController, type: :controller do

  it "should render the index template" do
    get :index
    expect(response).to render_template(:index)
  end

  it "should render the update template" do
    post :execute, {operation: "add", operand: "1"}
    expect(response).to render_template(:index)
  end

end
