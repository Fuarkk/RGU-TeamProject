require 'rails_helper'

RSpec.describe "extra_duties/new", type: :view do
  before(:each) do
    assign(:extra_duty, ExtraDuty.new())
  end

  it "renders new extra_duty form" do
    render

    assert_select "form[action=?][method=?]", extra_duties_path, "post" do
    end
  end
end
