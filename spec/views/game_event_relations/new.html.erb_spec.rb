# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'game_event_relations/new', type: :view do
  before(:each) do
    assign(:game_event_relation, FactoryBot.create(:game_event_relation))
  end

  it 'renders new game_event_relation form' do
    render

    assert_select 'form[action=?][method=?]', game_event_relations_path, 'post' do
      assert_select 'select[name=?]', 'game_event_relation[game_id]'

      assert_select 'select[name=?]', 'game_event_relation[event_id]'
    end
  end
end
