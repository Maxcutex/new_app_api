# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::StructureTypesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/structure_types').to route_to(
        controller: 'api/v1/structure_types', action: 'index'
      )
    end

    it 'routes to #show' do
      expect(get: '/api/v1/structure_types/1').to route_to(
        controller: 'api/v1/structure_types', action: 'show', id: '1'
      )
    end

    it 'routes to #create' do
      expect(post: '/api/v1/structure_types').to route_to(
        controller: 'api/v1/structure_types', action: 'create'
      )
    end

    it 'routes to #update via PUT' do
      expect(put: '/api/v1/structure_types/1').to route_to(
        controller: 'api/v1/structure_types', action: 'update', id: '1'
      )
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/v1/structure_types/1').to route_to(
        controller: 'api/v1/structure_types', action: 'update', id: '1'
      )
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/structure_types/1').to route_to(
        controller: 'api/v1/structure_types', action: 'destroy', id: '1'
      )
    end
  end
end
