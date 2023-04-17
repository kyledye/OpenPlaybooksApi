# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SideSportsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/side_sports').to route_to('side_sports#index')
    end

    it 'routes to #new' do
      expect(get: '/side_sports/new').to route_to('side_sports#new')
    end

    it 'routes to #show' do
      expect(get: '/side_sports/1').to route_to('side_sports#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/side_sports/1/edit').to route_to('side_sports#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/side_sports').to route_to('side_sports#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/side_sports/1').to route_to('side_sports#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/side_sports/1').to route_to('side_sports#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/side_sports/1').to route_to('side_sports#destroy', id: '1')
    end
  end
end
