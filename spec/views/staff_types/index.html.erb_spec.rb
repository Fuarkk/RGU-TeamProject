require 'rails_helper'

RSpec.describe "staff_types/index", type: :view do
  before(:each) do
    assign(:staff_types, [
      StaffType.create!(),
      StaffType.create!()
    ])
  end

  it "renders a list of staff_types" do
    render
  end
end
