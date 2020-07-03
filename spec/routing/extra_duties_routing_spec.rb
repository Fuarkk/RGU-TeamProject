require "rails_helper"

RSpec.describe ExtraDutiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/extra_duties").to route_to("extra_duties#index")
    end

    it "routes to #new" do
      expect(:get => "/extra_duties/new").to route_to("extra_duties#new")
    end

    it "routes to #show" do
      expect(:get => "/extra_duties/1").to route_to("extra_duties#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/extra_duties/1/edit").to route_to("extra_duties#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/extra_duties").to route_to("extra_duties#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/extra_duties/1").to route_to("extra_duties#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/extra_duties/1").to route_to("extra_duties#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/extra_duties/1").to route_to("extra_duties#destroy", :id => "1")
    end
  end
end
