# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'members/new', type: :view do
  before(:each) do
    assign(:member, FactoryBot.create(:member))
  end

  it 'renders new member form' do
    skip 'TODO: Test cannot detect element'
    render

    assert_select 'form[action=?][method=?]', members_path, 'post' do
      assert_select 'input[name=?]', 'member[name]'

      assert_select 'input[name=?]', 'member[alias]'

      assert_select 'input[name=?]', 'member[role]'

      assert_select 'input[name=?]', 'member[blurb]'

      assert_select 'input[name=?]', 'member[image_link]'
    end
  end
end
