# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'society_servers/index', type: :view do
  before(:each) do
    assign(:servers, [
             SocietyServer.create!(
               game: nil,
               port: 2
             ),
             SocietyServer.create!(
               game: nil,
               port: 2
             )
           ])
  end

  it 'renders a list of servers' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
