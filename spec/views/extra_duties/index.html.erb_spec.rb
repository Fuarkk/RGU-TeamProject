require 'rails_helper'

RSpec.describe "extra_duties/index", type: :view do
  before(:each) do
    assign(:extra_duties, [
      ExtraDuty.create!(),
      ExtraDuty.create!()
    ])
  end

  it "renders a list of extra_duties" do
    render
  end
end
