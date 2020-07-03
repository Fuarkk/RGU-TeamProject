require "rails_helper"

RSpec.describe StaffTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/staff_types").to route_to("staff_types#index")
    end

    it "routes to #new" do
      expect(:get => "/staff_types/new").to route_to("staff_types#new")
    end

    it "routes to #show" do
      expect(:get => "/staff_types/1").to route_to("staff_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/staff_types/1/edit").to route_to("staff_types#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/staff_types").to route_to("staff_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/staff_types/1").to route_to("staff_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/staff_types/1").to route_to("staff_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/staff_types/1").to route_to("staff_types#destroy", :id => "1")
    end
  end
end
