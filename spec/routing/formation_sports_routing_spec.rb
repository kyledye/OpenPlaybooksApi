# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FormationSportsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/formation_sports').to route_to('formation_sports#index')
    end

    it 'routes to #new' do
      expect(get: '/formation_sports/new').to route_to('formation_sports#new')
    end

    it 'routes to #show' do
      expect(get: '/formation_sports/1').to route_to('formation_sports#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/formation_sports/1/edit').to route_to('formation_sports#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/formation_sports').to route_to('formation_sports#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/formation_sports/1').to route_to('formation_sports#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/formation_sports/1').to route_to('formation_sports#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/formation_sports/1').to route_to('formation_sports#destroy', id: '1')
    end
  end
end
