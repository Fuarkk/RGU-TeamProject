require 'rails_helper'

RSpec.describe "staff_types/edit", type: :view do
  before(:each) do
    @staff_type = assign(:staff_type, StaffType.create!())
  end

  it "renders the edit staff_type form" do
    render

    assert_select "form[action=?][method=?]", staff_type_path(@staff_type), "post" do
    end
  end
end
