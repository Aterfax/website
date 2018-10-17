# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/edit', type: :view do
  before(:each) do
    @event = assign(:event, FactoryBot.create(:event))
  end

  it 'renders the edit event form' do
    render

    assert_select 'form[action=?][method=?]', event_path(@event), 'post' do
      assert_select 'input[name=?]', 'event[location]'

      assert_select 'input[name=?]', 'event[lan_number]'

      assert_select 'input[name=?]', 'event[facebook_event_id]'

      assert_select 'input[name=?]', 'event[ticket_link]'
    end
  end
end
