# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'SocietyServers', type: :request do
  describe 'GET /society_servers' do
    it 'works! (now write some real specs)' do
      get society_servers_path
      expect(response).to have_http_status(200)
    end
  end
end
