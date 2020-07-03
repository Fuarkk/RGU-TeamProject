require 'rails_helper'

RSpec.describe "staff", type: :request do
  describe "GET /staff" do
    it "works! (now write some real specs)" do
      get staff_path
      expect(response).to have_http_status(200)
    end
  end
end
