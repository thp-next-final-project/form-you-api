require 'rails_helper'

RSpec.describe "Formations", type: :request do
  describe "GET /formations" do
    it "works! (now write some real specs)" do
      get formations_path
      expect(response).to have_http_status(200)
    end
  end
end
