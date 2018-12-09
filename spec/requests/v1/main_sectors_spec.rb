require 'rails_helper'

RSpec.describe "MainSectors", type: :request do
  describe "GET /api/v1/main_sectors" do
    it "works! (now write some real specs)" do
      get api_v1_main_sectors_path
      expect(response).to have_http_status(200)
    end
  end

  # initialize test data
  let!(:main_sectors) { create_list(:main_sector, 10) }
  let(:main_sector_id) { main_sectors.first.id }

  # Test suite for get main_sectors
  describe 'GET /api/v1/main_sectors' do
    before { get api_v1_main_sectors_path }

    it 'returns list of main_sectors' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for Get /api/v1/main_sectors/:id
  describe 'GET /api/v1/main_sectors/:id' do
    before { get api_v1_main_sector_path(main_sector_id) }

    context 'when the record exists' do
      it 'returns the main_sector' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(main_sector_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:main_sector_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("{\"message\":\"Couldn't find MainSector with 'id'=100\"}")
      end
    end

    # Test suite for POST /api/v1/main_sectors
    describe 'POST /api/v1/main_sectors' do
      # valid payload
      let!(:valid_attributes) {
        {
          sector_name: 'Finance'
        }
      }

      let!(:invalid_attributes) {
        {
          sector_name: nil
        }
      }
      
      context 'when the request is valid' do
        before { post api_v1_main_sectors_path, params: { main_sector: valid_attributes } }

        it 'creates an main_sector' do
          expect(json['sector_name']).to eq('Finance')
        end

        it 'returns status code 201' do
          expect(response).to have_http_status(201)
        end
      end

      context 'when the request is invalid' do
        before { post '/api/v1/main_sectors', params: { main_sector: invalid_attributes } }

        it 'returns status code 422' do
          expect(response).to have_http_status(422)
        end

        it 'returns a validation failure message' do
          
          expect(response.body)
            .to match("{\"sector_name\":[\"can't be blank\"]}")
        end
      end
    end

    # Test suite for PUT /api/v1/main_sectors/:id
    describe 'PUT /api/v1/main_sectors/:id' do
      let(:valid_attributes) { { sector_name: 'Beverages' } }

      context 'when the record exists' do
        before { put api_v1_main_sector_path(main_sector_id), params: { main_sector: valid_attributes } }

        it 'updates the record' do
          # expect(response.body).to be_empty
          expect(json['sector_name']).to eq('Beverages')
        end

        it 'returns status code 200' do
          expect(response).to have_http_status(200)
        end
      end
    end

    # Test suite for DELETE /api/v1/main_sectors/:id
    describe 'DELETE /api/v1/main_sectors/:id' do
      before { delete api_v1_main_sector_path(main_sector_id) }

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end
end
