# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PlatformAccounts', type: :request do
  describe 'GET /platform_accounts' do
    it 'redirects if not logged in' do
      get platform_accounts_path
      expect(response).to have_http_status(302)
    end

    it 'does not redirect if logged in' do
      skip 'test not fully implemented'
      get platform_accounts_path
      expect(response).to have_http_status(200)
    end
  end
end
