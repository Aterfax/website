# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'sponsors/index', type: :view do
  before(:each) do
    assign(:sponsors, [FactoryBot.create(:sponsor), FactoryBot.create(:sponsor)])
  end

  it 'renders a list of sponsors' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Website'.to_s, count: 2
    # assert_select 'tr>td', text: 'Blurb'.to_s, count: 2
    assert_select 'tr>td', text: 'Facebook'.to_s, count: 2
    assert_select 'tr>td', text: 'Twitter'.to_s, count: 2
    assert_select 'tr>td', text: 'Image Link'.to_s, count: 2
  end
end
