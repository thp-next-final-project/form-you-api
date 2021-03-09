require "rails_helper"

RSpec.describe PromotionUserJointuresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/promotion_user_jointures").to route_to("promotion_user_jointures#index")
    end

    it "routes to #show" do
      expect(:get => "/promotion_user_jointures/1").to route_to("promotion_user_jointures#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/promotion_user_jointures").to route_to("promotion_user_jointures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/promotion_user_jointures/1").to route_to("promotion_user_jointures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/promotion_user_jointures/1").to route_to("promotion_user_jointures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/promotion_user_jointures/1").to route_to("promotion_user_jointures#destroy", :id => "1")
    end
  end
end
