require "rails_helper"

RSpec.describe staffController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/staff").to route_to("staff#index")
    end

    it "routes to #new" do
      expect(:get => "/staff/new").to route_to("staff#new")
    end

    it "routes to #show" do
      expect(:get => "/staff/1").to route_to("staff#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/staff/1/edit").to route_to("staff#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/staff").to route_to("staff#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/staff/1").to route_to("staff#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/staff/1").to route_to("staff#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/staff/1").to route_to("staff#destroy", :id => "1")
    end
  end
end
