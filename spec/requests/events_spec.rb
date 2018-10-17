# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Events', type: :request do
  describe 'GET /events' do
    it 'redirects if not logged in' do
      get events_path
      expect(response).to have_http_status(302)
    end

    it 'does not redirect if logged in' do
      skip 'TODO: Test cannot detect element'
      get events_path
      expect(response).to have_http_status(200)
    end
  end
end
