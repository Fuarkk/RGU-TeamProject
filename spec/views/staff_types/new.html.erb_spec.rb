require 'rails_helper'

RSpec.describe "staff_types/new", type: :view do
  before(:each) do
    assign(:staff_type, StaffType.new())
  end

  it "renders new staff_type form" do
    render

    assert_select "form[action=?][method=?]", staff_types_path, "post" do
    end
  end
end
