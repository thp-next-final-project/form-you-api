require 'rails_helper'

RSpec.describe "PromotionUserJointures", type: :request do
  describe "GET /promotion_user_jointures" do
    it "works! (now write some real specs)" do
      get promotion_user_jointures_path
      expect(response).to have_http_status(200)
    end
  end
end
