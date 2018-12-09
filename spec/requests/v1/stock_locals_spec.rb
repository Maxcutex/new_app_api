require 'rails_helper'

RSpec.describe "StockLocals", type: :request do
  # describe "GET /api/v1/stock_locals" do
  #   it "works! (now write some real specs)" do
  #     get api_v1_stock_locals_path
  #     expect(response).to have_http_status(200)
  #   end
  # end
  let!(:main_sector) { create(:main_sector) }
  let!(:industry) { create(:industry) }
  let!(:sub_sector) { create(:sub_sector, main_sector_id: main_sector.id) }
  let!(:stock_locals) { create_list(:stock_local, 20, sub_sector: sub_sector, industry: industry) }
  let(:id) { stock_locals.first.id }
  let(:stock_local) { stock_locals.first}


  # Test suite for GET /api/v1/stock_locals
  describe 'GET /api/v1/stock_locals' do
    before { get api_v1_stock_locals_path }

    context 'when stock_locals exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all stock_locals' do
        expect(json.size).to eq(20)
      end
    end
  end

  # Test suite for GET /api/v1/stock_locals/:id
  describe 'GET /api/v1/stock_locals/:id' do
    before { get "/api/v1/stock_locals/#{id}" }

    context 'when stock_locals exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the stock_locals' do
        expect(json['id']).to eq(id)
      end
    end

    context 'when stock_locals does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to include("{\"message\":\"Couldn't find StockLocal with 'id'=0\"}")
      end
    end

   
    
  end

  # Test suite for PUT /api/v1/stock_locals
  describe 'POST /api/v1/stock_locals' do
    let(:valid_attributes) { attributes_for_with_foreign_keys(:stock_local) }
    let(:invalid_attributes) { {
      sec_code: "MyString",
    sec_name: "MyString",
    exchange_code: "MyString",
    asset_class_coce: "MyString",
    contact: "MyString",
    description: "MyString",
    tier_code: "MyString",
    par_value: "MyString",
    list_date: "2018-10-26",
    outstanding_shares: "9.99",
    grp_code: "MyString",
    registrar: "MyString",
    address_1: "MyString",
    address_2: "MyString",
    address_3: "MyString",
    state_code: "MyString",
    website: "MyString",
    email: "MyString",
    gsm: "MyString",
    land_tel: "MyString",
    fax_no: "MyString",
    regis_close: "MyString",
    year_end: "MyString",
    logo: "MyString",
    shares_in_issue: 1,
    capitalization: 1,
    view_count: 1,
    industry_id: 0,
    sub_sector_id: 1
    }}

    context 'when request attributes are valid' do
      before { post "/api/v1/stock_locals", params: { stock_local: valid_attributes }}

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post "/api/v1/stock_locals", params: { stock_local: invalid_attributes } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a failure message' do
        expect(response.body).to match("{\"industry\":[\"must exist\"]}")
      end
    end
  end

  # Test suite for PUT /api/v1/stock_locals/:id
  describe 'PUT /api/v1/stock_locals/:id' do
    let(:valid_attributes) { attributes_for(:stock_local) }

    before { put "/api/v1/stock_locals/#{id}", params: { stock_local: valid_attributes } }

    context 'when sub_sector exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'updates the sub_sector' do
        updated_sub_sector = SubSector.find(id)
        expect(updated_sub_sector.sub_sector_name).to match(/MyString/)
      end
    end

    context 'when the sub_sector does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        
        expect(response.body).to include("{\"message\":\"Couldn't find StockLocal with 'id'=0\"}")
      end
    end
  end

  # Test suite for DELETE /api/v1/stock_locals/:id
  describe 'DELETE /api/v1/stock_locals/:id' do
    before { delete "/api/v1/stock_locals/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
