# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'games/edit', type: :view do
  before(:each) do
    @game = assign(:game, FactoryBot.create(:game))
  end

  it 'renders the edit game form' do
    render

    assert_select 'form[action=?][method=?]', game_path(@game), 'post' do
      assert_select 'input[name=?]', 'game[name]'

      assert_select 'input[name=?]', 'game[link]'
    end
  end
end
