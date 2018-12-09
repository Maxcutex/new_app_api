require 'rails_helper'

RSpec.describe "SubSectors", type: :request do
  # describe "GET /api/v1/sub_sectors" do
  #   it "works! (now write some real specs)" do
  #     get api_v1_sub_sectors_path
  #     expect(response).to have_http_status(200)
  #   end
  # end
  # Initialize the test data
  let!(:main_sector) { create(:main_sector) }
  let!(:sub_sectors) { create_list(:sub_sector, 20, main_sector_id: main_sector.id) }
  let(:main_sector_id) { main_sector.id }
  let(:id) { sub_sectors.first.id }

  # Test suite for GET /api/v1/main_sectors/:main_sector_id/sub_sectors
  describe 'GET /api/v1/main_sectors/:main_sector_id/sub_sectors' do
    before { get api_v1_main_sector_sub_sectors_path(main_sector_id: main_sector_id) }

    context 'when main_sector exists' do
      it 'returns status code 200' do
        
        expect(response).to have_http_status(200)
      end

      it 'returns all main_sector sub_sectors' do
        expect(json.size).to eq(20)
      end
    end

    context 'when main_sector does not exist' do
      let(:main_sector_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("{\"message\":\"Couldn't find MainSector with 'id'=0\"}")
      end
    end
  end

  # Test suite for GET /api/v1/main_sectors/:main_sector_id/sub_sectors/:id
  describe 'GET /api/v1/main_sectors/:main_sector_id/sub_sectors/:id' do
    before { get "/api/v1/main_sectors/#{main_sector_id}/sub_sectors/#{id}" }

    context 'when main_sector sub_sector exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the sub_sector' do
        expect(json['id']).to eq(id)
      end
    end

    context 'when main_sector sub_sector does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find SubSector")
      end
    end
  end

  # Test suite for PUT /api/v1/main_sectors/:main_sector_id/sub_sectors
  describe 'POST /api/v1/main_sectors/:main_sector_id/sub_sectors' do
    let(:valid_attributes) { { main_sector_id: 1, sub_sector_name: 'mysubsector' } }
    let(:invalid_attributes) { { main_sector_id: nil, sub_sector_name: 'mysubsector' } }

    context 'when request attributes are valid' do
      before { post "/api/v1/main_sectors/#{main_sector_id}/sub_sectors", params: { sub_sector: valid_attributes }}

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post "/api/v1/main_sectors/#{main_sector_id}/sub_sectors", params: { sub_sector: invalid_attributes } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a failure message' do
        expect(response.body).to match("{\"main_sector\":[\"must exist\"],\"main_sector_id\":[\"can't be blank\"]}")
      end
    end
  end

  # Test suite for PUT /api/v1/main_sectors/:main_sector_id/sub_sectors/:id
  describe 'PUT /api/v1/main_sectors/:main_sector_id/sub_sectors/:id' do
    let(:valid_attributes) {  { main_sector_id: 1, sub_sector_name: 'mysubsectorNew', id: id}}

    before { put "/api/v1/main_sectors/#{main_sector_id}/sub_sectors/#{id}", params: { sub_sector: valid_attributes } }

    context 'when sub_sector exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'updates the sub_sector' do
        updated_sub_sector = SubSector.find(id)
        expect(updated_sub_sector.sub_sector_name).to match(/mysubsectorNew/)
      end
    end

    context 'when the sub_sector does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        
        expect(response.body).to include("Couldn't find SubSector")
      end
    end
  end

  # Test suite for DELETE /api/v1/main_sectors/:id
  describe 'DELETE /api/v1/main_sectors/:id' do
    before { delete "/api/v1/main_sectors/#{main_sector_id}/sub_sectors/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
