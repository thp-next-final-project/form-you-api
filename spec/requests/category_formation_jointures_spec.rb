require 'rails_helper'

RSpec.describe "CategoryFormationJointures", type: :request do
  describe "GET /category_formation_jointures" do
    it "works! (now write some real specs)" do
      get category_formation_jointures_path
      expect(response).to have_http_status(200)
    end
  end
end
