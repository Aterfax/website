# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'games/index', type: :view do
  before(:each) do
    assign(:games, [FactoryBot.create(:game), FactoryBot.create(:game)])
  end

  it 'renders a list of games' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    # assert_select 'tr>td', text: 'Platform'.to_s, count: 2
    # assert_select 'tr>td', text: 'Link'.to_s, count: 2
  end
end
