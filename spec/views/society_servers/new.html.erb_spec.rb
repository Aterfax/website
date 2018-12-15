# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'society_servers/new', type: :view do
  before(:each) do
    assign(:server, SocietyServer.new(
                      game: nil,
                      port: 1
                    ))
  end

  it 'renders new server form' do
    render

    assert_select 'form[action=?][method=?]', society_servers_path, 'post' do
      assert_select 'input[name=?]', 'society_server[game_id]'

      assert_select 'input[name=?]', 'society_server[port]'
    end
  end
end
