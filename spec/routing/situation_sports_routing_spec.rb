# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SituationSportsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/situation_sports').to route_to('situation_sports#index')
    end

    it 'routes to #new' do
      expect(get: '/situation_sports/new').to route_to('situation_sports#new')
    end

    it 'routes to #show' do
      expect(get: '/situation_sports/1').to route_to('situation_sports#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/situation_sports/1/edit').to route_to('situation_sports#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/situation_sports').to route_to('situation_sports#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/situation_sports/1').to route_to('situation_sports#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/situation_sports/1').to route_to('situation_sports#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/situation_sports/1').to route_to('situation_sports#destroy', id: '1')
    end
  end
end
