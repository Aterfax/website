# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'servers/edit', type: :view do
  before(:each) do
    @server = assign(:server, FactoryBot.create(:server))
  end

  it 'renders the edit server form' do
    render

    assert_select 'form[action=?][method=?]', server_path(@server), 'post' do
      assert_select 'select[name=?]', 'server[game_id]'

      assert_select 'input[name=?]', 'server[port]'
    end
  end
end
