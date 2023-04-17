# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SituationsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/situations').to route_to('situations#index')
    end

    it 'routes to #new' do
      expect(get: '/situations/new').to route_to('situations#new')
    end

    it 'routes to #show' do
      expect(get: '/situations/1').to route_to('situations#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/situations/1/edit').to route_to('situations#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/situations').to route_to('situations#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/situations/1').to route_to('situations#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/situations/1').to route_to('situations#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/situations/1').to route_to('situations#destroy', id: '1')
    end
  end
end
