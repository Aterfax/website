# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Platforms', type: :request do
  describe 'GET /platforms' do
    it 'redirects if not logged in' do
      get platforms_path
      expect(response).to have_http_status(302)
    end

    it 'does not redirect if logged in' do
      user = FactoryBot.create(:user)
      sign_in user
      get platforms_path
      expect(response).to have_http_status(200)
    end
  end
end
