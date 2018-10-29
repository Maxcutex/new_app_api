require 'rails_helper'

RSpec.describe "MainSectors", type: :request do
  describe "GET /api/v1/main_sectors" do
    it "works! (now write some real specs)" do
      get api_v1_main_sectors_path
      expect(response).to have_http_status(200)
    end
  end
end
