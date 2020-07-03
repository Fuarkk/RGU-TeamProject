require 'rails_helper'

RSpec.describe "staff/index", type: :view do
  before(:each) do
    assign(:staff, [
      Staff.create!(),
      Staff.create!()
    ])
  end

  it "renders a list of staff" do
    render
  end
end
