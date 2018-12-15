# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'society_servers/edit', type: :view do
  before(:each) do
    @server = assign(:server, SocietyServer.create!(
                                game: nil,
                                port: 1
                              ))
  end

  it 'renders the edit server form' do
    render

    assert_select 'form[action=?][method=?]', society_server_path(@server), 'post' do
      assert_select 'input[name=?]', 'society_server[game_id]'

      assert_select 'input[name=?]', 'society_server[port]'
    end
  end
end
