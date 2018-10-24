# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/index', type: :view do
  before(:each) do
    assign(:events, [
             FactoryBot.create(:event),
             FactoryBot.create(:event)
           ])
  end

  it 'renders a list of events' do
    render
    assert_select 'tr>td', text: 'Location'.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Facebook Event ID'.to_s, count: 2
    assert_select 'tr>td', text: 'Ticket Link'.to_s, count: 2
  end
end
