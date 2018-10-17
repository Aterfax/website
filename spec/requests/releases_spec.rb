# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Releases', type: :request do
  describe 'GET /releases' do
    it 'redirects if not logged in' do
      get releases_path
      expect(response).to have_http_status(302)
    end

    it 'does not redirect if logged in' do
      skip 'TODO: Log in via Devise'
      get releases_path
      expect(response).to have_http_status(200)
    end
  end
end
