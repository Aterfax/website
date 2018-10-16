# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'servers/index', type: :view do
  before(:each) do
    assign(:servers, [FactoryBot.create(:server), FactoryBot.create(:server)])
  end

  it 'renders a list of servers' do
    render
    # assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 1.to_s, count: 2
  end
end
