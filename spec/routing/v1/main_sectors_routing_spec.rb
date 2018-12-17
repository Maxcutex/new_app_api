require 'rails_helper'

RSpec.describe Api::V1::MainSectorsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/main_sectors').to route_to(
        controller: 'api/v1/main_sectors', action: 'index')
    end

    it 'routes to #show' do
      expect(get: '/api/v1/main_sectors/1').to route_to(
        controller: 'api/v1/main_sectors', action: 'show', id: '1'
      )
    end


    it 'routes to #create' do
      expect(post: '/api/v1/main_sectors').to route_to(
        controller: 'api/v1/main_sectors', action: 'create'
      )
    end

    it 'routes to #update via PUT' do
      expect(put: '/api/v1/main_sectors/1').to route_to(
        controller: 'api/v1/main_sectors', action: 'update', id: '1'
      )
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/v1/main_sectors/1').to route_to(
        controller: 'api/v1/main_sectors', action: 'update', id: '1'
      )
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/main_sectors/1').to route_to(
        controller: 'api/v1/main_sectors', action: 'destroy', id: '1'
      )
    end
  end
end
