# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'platforms/index', type: :view do
  before(:each) do
    assign(:platforms, [FactoryBot.create(:platform), FactoryBot.create(:platform)])
  end

  it 'renders a list of platforms' do
    skip 'Cannot yet target platform partial'
    render
    # assert_select 'tr>td', text: 'Name'.to_s, count: 2
    # assert_select 'tr>td', text: 'Icon'.to_s, count: 2
  end
end
