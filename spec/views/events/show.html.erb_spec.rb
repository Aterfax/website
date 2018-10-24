# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/show', type: :view do
  before(:each) do
    @event = assign(:event, FactoryBot.create(:event))
    allow(view).to receive(:user_signed_in?) { true }
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Facebook Event/)
    expect(rendered).to match(/Ticket Link/)
  end
end
