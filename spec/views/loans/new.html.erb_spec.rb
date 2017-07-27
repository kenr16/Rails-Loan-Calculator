require 'rails_helper'

RSpec.describe "loans/new", type: :view do
  before(:each) do
    assign(:loan, Loan.new(
      :principal => "9.99",
      :months => 1,
      :years => 1,
      :interest => "9.99"
    ))
  end

  it "renders new loan form" do
    render

    assert_select "form[action=?][method=?]", loans_path, "post" do

      assert_select "input[name=?]", "loan[principal]"

      assert_select "input[name=?]", "loan[months]"

      assert_select "input[name=?]", "loan[years]"

      assert_select "input[name=?]", "loan[interest]"
    end
  end
end
