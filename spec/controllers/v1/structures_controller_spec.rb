require 'rails_helper'

RSpec.describe Api::V1::StructuresController, type: :controller do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns http success" do
      structure = Structure.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      structure = Structure.create! valid_attributes
      get :show, params: {id: structure.to_param}, session: valid_session
      expect(response).to have_http_status(:success)
    end
  end

end
