# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'games/new', type: :view do
  before(:each) do
    assign(:game, Game.new(
                    name: 'MyString',
                    platform: 'MyString',
                    link: 'MyString'
                  ))
  end

  it 'renders new game form' do
    render

    assert_select 'form[action=?][method=?]', games_path, 'post' do
      assert_select 'input[name=?]', 'game[name]'

      assert_select 'input[name=?]', 'game[platform]'

      assert_select 'input[name=?]', 'game[link]'
    end
  end
end
