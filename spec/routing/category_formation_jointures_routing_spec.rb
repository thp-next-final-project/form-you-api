require "rails_helper"

RSpec.describe CategoryFormationJointuresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/category_formation_jointures").to route_to("category_formation_jointures#index")
    end

    it "routes to #show" do
      expect(:get => "/category_formation_jointures/1").to route_to("category_formation_jointures#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/category_formation_jointures").to route_to("category_formation_jointures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/category_formation_jointures/1").to route_to("category_formation_jointures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/category_formation_jointures/1").to route_to("category_formation_jointures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/category_formation_jointures/1").to route_to("category_formation_jointures#destroy", :id => "1")
    end
  end
end
