# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #committee' do
    it 'returns http success' do
      get :committee
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #lan' do
    it 'returns http success' do
      get :lan
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #upcoming_events' do
    it 'returns http success' do
      get :upcoming_events
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #sign_up' do
    it 'returns http success' do
      get :sign_up
      expect(response).to have_http_status(:success)
    end
  end
end
