require 'rails_helper'

RSpec.describe "ExtraDuties", type: :request do
  describe "GET /extra_duties" do
    it "works! (now write some real specs)" do
      get extra_duties_path
      expect(response).to have_http_status(200)
    end
  end
end
