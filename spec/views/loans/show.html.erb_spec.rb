require 'rails_helper'

RSpec.describe "loans/show", type: :view do
  before(:each) do
    @loan = assign(:loan, Loan.create!(
      :principal => "9.99",
      :months => 2,
      :years => 3,
      :interest => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
  end
end
