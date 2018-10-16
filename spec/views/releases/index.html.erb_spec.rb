# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'releases/index', type: :view do
  before(:each) do
    assign(:releases, [FactoryBot.create(:release), FactoryBot.create(:release)])
  end

  it 'renders a list of releases' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
