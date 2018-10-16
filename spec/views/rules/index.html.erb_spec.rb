# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rules/index', type: :view do
  before(:each) do
    assign(:codes, [FactoryBot.create(:code), FactoryBot.create(:code)])
  end

  it 'renders a list of rules' do
    skip 'Cannot yet target rule elements'
    render
    # assert_select 'tr>td', text: nil.to_s, count: 2
    # assert_select 'tr>td', text: 'Summary'.to_s, count: 2
    # assert_select 'tr>td', text: 'Full'.to_s, count: 2
    # assert_select 'tr>td', text: 'Icon'.to_s, count: 2
  end
end
