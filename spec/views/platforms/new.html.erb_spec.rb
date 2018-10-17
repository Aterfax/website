# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'platforms/new', type: :view do
  before(:each) do
    assign(:platform, FactoryBot.create(:platform))
  end

  it 'renders new platform form' do
    skip 'TODO: Test cannot detect element'
    render

    assert_select 'form[action=?][method=?]', platforms_path, 'post' do
      assert_select 'input[name=?]', 'platform[name]'

      assert_select 'input[name=?]', 'platform[icon]'
    end
  end
end
