# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'releases/new', type: :view do
  before(:each) do
    assign(:release, FactoryBot.create(:release))
  end

  it 'renders new release form' do
    skip 'TODO: Test cannot detect element'
    render

    assert_select 'form[action=?][method=?]', releases_path, 'post' do
      assert_select 'select[name=?]', 'release[game_id]'

      assert_select 'select[name=?]', 'release[platform_id]'
    end
  end
end
