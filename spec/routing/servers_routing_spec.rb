# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ServersController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/admin/servers').to route_to('servers#index')
    end

    it 'routes to #new' do
      expect(get: '/admin/servers/new').to route_to('servers#new')
    end

    it 'routes to #show' do
      expect(get: '/admin/servers/1').to route_to('servers#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/admin/servers/1/edit').to route_to('servers#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/admin/servers').to route_to('servers#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/admin/servers/1').to route_to('servers#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/admin/servers/1').to route_to('servers#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/admin/servers/1').to route_to('servers#destroy', id: '1')
    end
  end
end
