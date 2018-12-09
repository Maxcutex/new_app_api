# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::SubSectorsController, type: :routing do
  let!(:main_sector) { create(:main_sector) }

  describe 'routing' do
    it 'routes to #index' do
      expect(
        get: "/api/v1/main_sectors/#{main_sector.id}/sub_sectors"
      ).to route_to(
        controller: 'api/v1/sub_sectors', action: 'index', main_sector_id: '1'
      )
    end

    it 'routes to #show' do
      expect(
        get: "/api/v1/main_sectors/#{main_sector.id}/sub_sectors/1"
      ).to route_to(
        controller: 'api/v1/sub_sectors', action: 'show',
        main_sector_id: '1', id: '1'
      )
    end

    it 'routes to #create' do
      expect(
        post: "/api/v1/main_sectors/#{main_sector.id}/sub_sectors"
      ).to route_to(
        controller: 'api/v1/sub_sectors', action: 'create', main_sector_id: '1'
      )
    end

    it 'routes to #update via PUT' do
      expect(
        put: "/api/v1/main_sectors/#{main_sector.id}/sub_sectors/1"
      ).to route_to(
        controller: 'api/v1/sub_sectors', action: 'update',
        main_sector_id: '1', id: '1'
      )
    end

    it 'routes to #update via PATCH' do
      expect(
        patch: "/api/v1/main_sectors/#{main_sector.id}/sub_sectors/1"
      ).to route_to(
        controller: 'api/v1/sub_sectors', action: 'update',
        main_sector_id: '1', id: '1'
      )
    end

    it 'routes to #destroy' do
      expect(
        delete: "/api/v1/main_sectors/#{main_sector.id}/sub_sectors/1"
      ).to route_to(
        controller: 'api/v1/sub_sectors', action: 'destroy',
        main_sector_id: '1', id: '1'
      )
    end
  end
end
