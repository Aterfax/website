# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'game_event_relations/show', type: :view do
  before(:each) do
    @game_event_relation = assign(:game_event_relation, FactoryBot.create(:game_event_relation))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
