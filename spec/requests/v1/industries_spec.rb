# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Industries', type: :request do
  # initialize test data
  let!(:industries) { create_list(:industry, 10) }
  let(:industry_id) { industries.first.id }

  # Test suite for get industries
  describe 'GET /api/v1/industries' do
    before { get api_v1_industries_path }

    it 'returns list of industries' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for Get /api/v1/industries/:id
  describe 'GET /api/v1/industries/:id' do
    before { get api_v1_industry_path(industry_id) }

    context 'when the record exists' do
      it 'returns the industry' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(industry_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:industry_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("Couldn't find Industry with 'id'=100")
      end
    end

    # Test suite for POST /api/v1/industries
    describe 'POST /api/v1/industries' do
      # valid payload
      let!(:valid_attributes) {
        {
          industry_name: 'Finance', exchange_code: 'EQ',
          sync_flag: 'ON', logo: 'logo'
        }
      }

      let!(:invalid_attributes) {
        {
          industry_name: 'Agriculture'
        }
      }
      
      context 'when the request is valid' do
        before { post api_v1_industries_path, params: { industry: valid_attributes } }

        it 'creates an industry' do
          
          expect(json['industry_name']).to eq('Finance')
        end

        it 'returns status code 201' do
          expect(response).to have_http_status(201)
        end
      end

      context 'when the request is invalid' do
        before { post '/api/v1/industries', params: { industry: invalid_attributes } }

        it 'returns status code 422' do
          expect(response).to have_http_status(422)
        end

        it 'returns a validation failure message' do
          
          expect(response.body)
            .to match("{\"exchange_code\":[\"can't be blank\"]}")
        end
      end
    end

    # Test suite for PUT /api/v1/industries/:id
    describe 'PUT /api/v1/industries/:id' do
      let(:valid_attributes) { { industry_name: 'Beverages' } }

      context 'when the record exists' do
        before { put api_v1_industry_path(industry_id), params: { industry: valid_attributes } }

        it 'updates the record' do
          # expect(response.body).to be_empty
          expect(json['industry_name']).to eq('Beverages')
        end

        it 'returns status code 200' do
          expect(response).to have_http_status(200)
        end
      end
    end

    # Test suite for DELETE /api/v1/industries/:id
    describe 'DELETE /api/v1/industries/:id' do
      before { delete api_v1_industry_path(industry_id) }

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end
end
