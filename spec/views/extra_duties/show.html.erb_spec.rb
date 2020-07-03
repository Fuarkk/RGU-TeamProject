require 'rails_helper'

RSpec.describe "extra_duties/show", type: :view do
  before(:each) do
    @extra_duty = assign(:extra_duty, ExtraDuty.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
