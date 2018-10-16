# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'servers/new', type: :view do
  before(:each) do
    assign(:server, FactoryBot.create(:server))
  end

  it 'renders new server form' do
    render

    assert_select 'form[action=?][method=?]', servers_path, 'post' do
      assert_select 'select[name=?]', 'server[game_id]'

      assert_select 'input[name=?]', 'server[port]'
    end
  end
end
