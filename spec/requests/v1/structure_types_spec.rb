require 'rails_helper'

RSpec.describe "StructureTypes", type: :request do
  describe "GET /structure_types" do
    it "works! (now write some real specs)" do
      get api_v1_structure_types_path
      expect(response).to have_http_status(200)
    end
  end
end
