require 'rails_helper'

RSpec.describe "loans/index", type: :view do
  before(:each) do
    assign(:loans, [
      Loan.create!(
        :principal => "9.99",
        :months => 2,
        :years => 3,
        :interest => "9.99"
      ),
      Loan.create!(
        :principal => "9.99",
        :months => 2,
        :years => 3,
        :interest => "9.99"
      )
    ])
  end

  it "renders a list of loans" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
