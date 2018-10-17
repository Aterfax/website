# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/new', type: :view do
  before(:each) do
    assign(:event, FactoryBot.create(:event))
  end

  it 'renders new event form' do
    skip 'TODO: Test cannot detect element'
    render

    assert_select 'form[action=?][method=?]', events_path, 'post' do
      assert_select 'input[name=?]', 'event[location]'

      assert_select 'input[name=?]', 'event[lan_number]'

      assert_select 'input[name=?]', 'event[facebook_event_id]'

      assert_select 'input[name=?]', 'event[ticket_link]'
    end
  end
end
