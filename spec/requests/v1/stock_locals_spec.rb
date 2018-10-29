require 'rails_helper'

RSpec.describe "StockLocals", type: :request do
  describe "GET /api/v1/stock_locals" do
    it "works! (now write some real specs)" do
      get api_v1_stock_locals_path
      expect(response).to have_http_status(200)
    end
  end
end
