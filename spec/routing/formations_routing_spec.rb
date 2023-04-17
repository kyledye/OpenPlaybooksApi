# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FormationsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/formations').to route_to('formations#index')
    end

    it 'routes to #new' do
      expect(get: '/formations/new').to route_to('formations#new')
    end

    it 'routes to #show' do
      expect(get: '/formations/1').to route_to('formations#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/formations/1/edit').to route_to('formations#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/formations').to route_to('formations#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/formations/1').to route_to('formations#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/formations/1').to route_to('formations#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/formations/1').to route_to('formations#destroy', id: '1')
    end
  end
end
