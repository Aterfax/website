# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'game_event_relations/index', type: :view do
  before(:each) do
    assign(:game_event_relations, [
             FactoryBot.create(:game_event_relation),
             FactoryBot.create(:game_event_relation)
           ])
  end

  it 'renders a list of game_event_relations' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
