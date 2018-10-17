# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'games/new', type: :view do
  before(:each) do
    assign(:game, FactoryBot.create(:game))
  end

  it 'renders new game form' do
    skip 'TODO: Test cannot detect element'
    render

    assert_select 'form[action=?][method=?]', games_path, 'post' do
      assert_select 'input[name=?]', 'game[name]'

      assert_select 'input[name=?]', 'game[link]'
    end
  end
end
