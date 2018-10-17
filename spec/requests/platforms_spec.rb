# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Platforms', type: :request do
  describe 'GET /platforms' do
    it 'redirects if not logged in' do
      get platforms_path
      expect(response).to have_http_status(302)
    end

    it 'does not redirect if logged in' do
      skip 'TODO: Log in via Devise'
      get platforms_path
      expect(response).to have_http_status(200)
    end
  end
end
