require 'rails_helper'

RSpec.describe "staff_types/show", type: :view do
  before(:each) do
    @staff_type = assign(:staff_type, StaffType.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
