require 'rails_helper'

RSpec.describe "loans/edit", type: :view do
  before(:each) do
    @loan = assign(:loan, Loan.create!(
      :principal => "9.99",
      :months => 1,
      :years => 1,
      :interest => "9.99"
    ))
  end

  it "renders the edit loan form" do
    render

    assert_select "form[action=?][method=?]", loan_path(@loan), "post" do

      assert_select "input[name=?]", "loan[principal]"

      assert_select "input[name=?]", "loan[months]"

      assert_select "input[name=?]", "loan[years]"

      assert_select "input[name=?]", "loan[interest]"
    end
  end
end
