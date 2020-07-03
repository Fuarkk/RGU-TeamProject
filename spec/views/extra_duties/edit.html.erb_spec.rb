require 'rails_helper'

RSpec.describe "extra_duties/edit", type: :view do
  before(:each) do
    @extra_duty = assign(:extra_duty, ExtraDuty.create!())
  end

  it "renders the edit extra_duty form" do
    render

    assert_select "form[action=?][method=?]", extra_duty_path(@extra_duty), "post" do
    end
  end
end
